#!/usr/bin/env fennel

;;;; BSD 3-Clause License
;;;; 
;;;; Copyright (c) 2024 NACAMURA Mitsuhiro
;;;; 
;;;; Redistribution and use in source and binary forms, with or without
;;;; modification, are permitted provided that the following conditions
;;;; are met:
;;;; 
;;;; 1. Redistributions of source code must retain the above copyright
;;;;    notice, this list of conditions and the following disclaimer.
;;;; 
;;;; 2. Redistributions in binary form must reproduce the above copyright
;;;;    notice, this list of conditions and the following disclaimer in
;;;;    the documentation and/or other materials provided with the
;;;;    distribution.
;;;; 
;;;; 3. Neither the name of the copyright holder nor the names of its
;;;;    contributors may be used to endorse or promote products derived
;;;;    from this software without specific prior written permission.
;;;; 
;;;; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
;;;; "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
;;;; LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
;;;; FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
;;;; COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
;;;; INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
;;;; BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
;;;; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
;;;; CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
;;;; LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
;;;; ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
;;;; POSSIBILITY OF SUCH DAMAGE.

;;;; # A monolithic script to update repository information.
;;;;
;;;; ## Description
;;;;
;;;; Using REST API, it queries to code hosting services such as GitHub,
;;;; and gets information of repositories and their latest commits.
;;;; The results are processed out into `data/plugins/*.json`.
;;;; For convenience in development, if command line option `--use-cache`
;;;; is found, fetched data are stored in `data/cache/`. Caches have
;;;; their life time 23 hours.
;;;;
;;;; ## Requirements
;;;;
;;;; - LuaJIT 2.1+
;;;; - Lua libraries:
;;;;    - http 0.3: <https://github.com/daurnimator/lua-http>
;;;;    - cjson 2.1.0: <https://github.com/mpx/lua-cjson>
;;;; - Fennel 1.4+ (not sure but it works at least for 1.4.0)
;;;;
;;;; It also depends on the following external programs.
;;;;
;;;; - `nix-prefetch-url`: to compute tarball hash,
;;;; - `jq`: to format JSON outputs, and
;;;; - `sed`: to update `README.md`.
;;;;
;;;; ## Accessing code hosting services
;;;;
;;;; This script currently supports:
;;;;
;;;; - GitHub
;;;; - GitLab
;;;; - sourcehut
;;;; - Codeberg
;;;;
;;;; For using REST API, GitHub personal access token (PAT) is mandatory,
;;;; since without the token its rate limit is only 60/hour.
;;;; For sourcehut, a PAT is also required. You can generate it by
;;;; creating your new account on sourcehut for free. The other services
;;;; actually do not require PAT, as the number of GitLab/Codeberg repositories
;;;; is only a few.
;;;;
;;;; You should set PATs via the following environment variables:
;;;;
;;;; - `GITHUB_TOKEN`
;;;; - `GITLAB_TOKEN`
;;;; - `SOURCEHUT_TOKEN`
;;;; - `CODEBERG_TOKEN`

(local unpack (or table.unpack _G.unpack))
(local {: view} (require :fennel))
(local {: stablepairs} (require :fennel.utils))
(local http/request (require :http.request))
(local cjson (require :cjson.safe))


(macro unless [condition & body]
  `(when (not ,condition)
     ,(unpack body)))


(macro assert/type [type* x]
  `(when (not= ,type* (type ,x))
     (error (.. ,type* " expected, got " (view ,x)))))

(macro assert/?type [type? x]
  `(when (not= nil ,x)
     (assert/type ,type? ,x)))


(fn merge! [tbl* & tbls]
  (each [_ tbl (ipairs tbls)]
    (each [k v (pairs tbl)]
      (set (. tbl* k) v)))
  tbl*)

(fn difference [left right]
  (collect [k v (pairs left)]
    (when (= nil (. right k))
      (values k v))))

(fn frequencies [tbl]
  (accumulate [acc {} _ x (ipairs tbl)]
    (doto acc
      (tset x (case (. acc x)
                n (+ n 1)
                _ 1))))) 

(fn frequencies/total [tbl]
  (let [freqs (frequencies tbl)]
    (values freqs
            {:total (accumulate [n 0 _ f (pairs freqs)]
                      (+ n f))})))


(fn file->string [path]
  (case (io.open path)
    file (with-open [file file] (file:read :*a))
    (_ msg) (values nil msg)))

(fn string->file [str path]
  (case (io.open path :w)
    file (with-open [file file] (file:write str))
    (_ msg)
    (if (msg:match "No such file or directory")
        (case (os.execute (.. "mkdir -p " (path:match "(.*)/")))
          0 (string->file str path)
          _ (values nil (.. "failed to create directory for '" path "'")))
        (values nil msg))))


(local log (let [mt {:level 1}]
             (set mt.__index mt)
             (fn mt.__call [_ ...] (io.stderr:write ...) (io.stderr:write "\n"))
             (fn mt.debug [s ...] (when (<= s.level 0) (s "[DEBUG] " ...)))
             (fn mt.info [s ...] (when (<= s.level 1) (s "[INFO] " ...)))
             (fn mt.warn [s ...] (when (<= s.level 2) (s "[WARNING] " ...)))
             (fn mt.error [s ...] (when (<= s.level 3) (s "[ERROR] " ...)))
             (fn mt.error/nil [s ...] (s:error ...) nil)
             (fn mt.error/exit [s ...] (s:error ...) (os.exit false))
             (let [level (case (os.getenv :LOG_LEVEL)
                           (where n (= :number (type n))) n
                           (where s (= :string (type s)))
                           (if (s:match "^[Dd][Ee][Bb][Uu][Gg]$") 0
                               (s:match "^[Ii][Nn][Ff][Oo]$") 1
                               (s:match "^[Ww][Aa][Rr][Nn]$") 2
                               (s:match "^[Ww][Aa][Rr][Nn][Ii][Nn][Gg]$") 2
                               (s:match "^[Ee][Rr][Rr][Oo][Rr]$") 3
                               (error (.. "Invalid LOG_LEVEL: " s))))]
               (setmetatable {: level} mt))))


(local json {})

(fn json.null? [x]
  (or (= nil x)
      (= "" x)
      (= cjson.null x))) ; #<userdata NULL>

(fn json.file->decoded [path]
  (case (file->string path)
    str (cjson.decode str)
    (_ msg) (values nil msg)))

(fn json.format [str]
  "Use jq to format and sort keys in JSON string."
  (let [path (os.tmpname)
        with-cleanup #(do (os.remove path) $...)]
    (case-try (string->file str path)
      true (case (io.popen (.. "jq -SM . '" path "' 2>/dev/null"))
             file (with-open [file file] (file:read :*a))
             (_ msg) (values nil msg))
      str (with-cleanup str)
      (catch (_ msg) (with-cleanup (values nil msg)))))) 

(fn json.decoded->file [val path]
  (case (cjson.encode val)
    str (string->file (json.format str) path)
    (_ msg) (values nil msg)))

(fn json.decoded->file/exit [val path]
  (case (json.decoded->file val path)
    true (os.exit)
    (_ msg) (log:error/exit "Failed to write '" path "': " msg)))


(local http {})

(fn http.get [uri ?header]
  (assert/type :string uri)
  (assert/?type :table ?header)
  (let [uri (if (uri:match "^https?://") uri (.. "https://" uri))
        request (http/request.new_from_uri uri)]
    (when (not= nil ?header)
      (each [k v (pairs ?header)]
        (request.headers:append k v)))
    (case-try (request:go)
      (header stream) (stream:get_body_as_string)
      (where body (= (header:get ":status") :200)) (values body header)
      (catch _ (values nil (.. "Failed to get contents from " uri)))))) 


(fn timestamp->date [timestamp]
  (assert/type :string timestamp)
  (case (timestamp:match "^%d%d%d%d%-%d%d%-%d%d")
    date date
    _ (error "Failed to convert timestamp to date")))


(local nix {})

(fn nix.prefetch-url [url]
  (with-open [pipe (io.popen (.. "nix-prefetch-url " url " 2>/dev/null"))]
    (let [out (pipe:read :*a)]
      (if (not= "" out)
          (pick-values 1 (out:gsub "\n+" ""))
          (values nil "Failed to run nix-prefetch-url")))))

(fn nix.prefetch [expr]
  (with-open [pipe (io.popen (.. "nix-prefetch '" expr "'"))]
    (let [out (pipe:read :*a)]
      (if (not= "" out)
          (pick-values 1 (out:gsub "\n+" ""))
          (values nil "Failed to run nix-prefetch")))))


(macro with-cache [{: expire : path} & body]
  (let [alive? (if (= expire nil)
                   `(fn [] true)
                   `(fn [time#] (< (os.time) (+ time# ,expire))))]
    `(let [cache# (json.file->decoded ,path)]
       (if (and (not (json.null? cache#)) (,alive? cache#.time))
           cache#
           (let [out# (do ,(unpack body))]
             (case (json.decoded->file out# ,path)
               true out#
               (_# msg#) (error msg#)))))))


(local hub {:site "missing.hub"
            :token_ {:env "MISSING_TOKEN"}
            :uri-base "api.missing-hub.com/"
            :cache-dir "data/cache/"
            :plugins {}
            :extra-fetchers {}})

(fn hub.token [self]
  (if self.token_.missing?
      nil
      (or self.token_.cache
          (case (os.getenv self.token_.env)
            token (do (set self.token_.cache token)
                      token)
            _ (do (log:warn "Missing " self.token_.env)
                  (set self.token_.missing? true)
                  nil)))))

(fn hub.query [self path]
  (assert/type :string path)
  (let [token (self:token)
        request-header {:content-type "application/json"
                        :authorization (when token (.. "token " token))}]
    (case (http.get (.. self.uri-base path) request-header) 
      (body response-header) (values (cjson.decode body) response-header)
      (_ msg) (values nil msg))))

(fn hub.repo-cache-path [self owner repo]
  (assert/type :string owner)
  (assert/type :string repo)
  (.. self.cache-dir "site=" self.site "/owner=" owner "/repo=" repo "/info.json"))

(fn hub.latest-commit-cache-path [self owner repo ?ref]
  (assert/type :string owner)
  (assert/type :string repo)
  (assert/?type :string ?ref)
  (.. self.cache-dir "site=" self.site "/owner=" owner "/repo=" repo "/refs/"
      (if ?ref (.. ?ref ".json") "default.json")))

(fn hub.repo-query []
  (error "Override hub.repo-query!"))

(fn hub.latest-commit-query []
  (error "Override hub.latest-commit-query!"))

(fn hub.preprocess/repo []
  (error "Override hub.preprocess/repo!"))

(fn hub.validate/repo [repo]
  (unless (and (= :string (type repo.owner))
               (= :string (type repo.repo))
               (or (= repo.description nil)
                   (= :string (type repo.description)))
               (or (= repo.homepage nil)
                   (= :string (type repo.homepage)))
               (or (= repo.license nil)
                   (= :string (type repo.license))))
    (error (.. "Invalid repo: " (view repo)))))

(fn hub.preprocess/latest-commit []
  (error "Override hub.preprocess/latest-commit!"))

(fn hub.validate/latest-commit [commit]
  (unless (and (= :string (type commit.rev))
               (= :string (type commit.timestamp)))
    (error (.. "Invalid latest commit: " (view commit)))))

(fn hub.tarball-uri []
  (error "Override hub.tarball-uri!"))

(fn hub.repo [self {: owner : repo}]
  (assert/type :string owner)
  (assert/type :string repo)
  (log:debug "Get " self.site " repo: " owner "/" repo)
  (with-cache {:path (self:repo-cache-path owner repo)
               :expire (* 8 60 60)}
    (log:debug "Cache " self.site " repo: " owner "/" repo)
    (case (self:query (self.repo-query owner repo))
      data (let [repo_ (self.preprocess/repo data)]
             (self.validate/repo repo_)
             (when (not= owner repo_.owner)
               (log:warn "Owner changed: "
                         self.site "/{" owner " -> " repo_.owner "}/" repo)
               (set repo_.owner owner))
             (when (not= repo repo_.repo)
               (log:warn "Repo changed: "
                         self.site "/" owner "/{" repo " -> " repo_.repo "}")
               (set repo_.repo repo))
             (doto repo_
               (tset :time (os.time))))
      (_ msg) (log:error/nil msg))))

(fn hub.tarball [self {: owner : repo : rev}]
  (assert/type :string owner)
  (assert/type :string repo)
  (assert/?type :string rev)
  (let [url (self.tarball-uri owner repo rev)]
    (log:info "Update tarball hash: " self.site "/" owner "/" repo)
    (case (nix.prefetch-url url)
      sha256 {: url : sha256}
      (_ msg) (log:error/nil (.. "Failed to get tarball hash: " msg)))))

(fn hub.known-commit [self {: owner : repo}]
  (assert/type :string owner)
  (assert/type :string repo)
  (let [key (.. self.site :/ owner :/ repo)
        {: timestamp : date : rev : url : sha256} (. self.plugins key)]
    {: timestamp : date : rev : url : sha256}))

(fn hub.latest-commit [self {: owner : repo : ref}]
  (assert/type :string owner)
  (assert/type :string repo)
  (assert/?type :string ref)
  (log:debug "Get " self.site " latest commit: " owner "/" repo
             (unpack (if ref ["/" ref] [])))
  (with-cache {:path (self:latest-commit-cache-path owner repo ref)
               :expire (* 8 60 60)}
    (log:debug "Cache " self.site " latest commit: " owner "/" repo
               (unpack (if ref ["/" ref] [])))
    (let [known (self:known-commit {: owner : repo})]
      (case (self:query (self.latest-commit-query owner repo ref))
        latest (let [latest (self.preprocess/latest-commit latest)]
                 (self.validate/latest-commit latest)
                 (if (= known.rev latest.rev)
                     (doto known
                       (tset :time (os.time)))
                     (case (self:tarball {: owner : repo :rev latest.rev})
                       {: url : sha256} (doto latest
                                          (tset :time (os.time))
                                          (tset :url url)
                                          (tset :sha256 sha256))
                       _ known)))
        (_ msg) (log:error/nil msg)))))

(fn hub.plugin [self {: owner : repo : ref}]
  (case-try (self:repo {: owner : repo})
    repo_ (self:latest-commit {: owner : repo :ref (or ref repo_.default_branch)})
    latest (doto (merge! repo_ latest)
             (tset :default_branch nil)
             (tset :time nil)
             (tset :timestamp nil)
             (tset :date (or latest.date (timestamp->date latest.timestamp))))
    (catch _ nil)))


(local github (let [self {:site :github.com
                          :token_ {:env "GITHUB_TOKEN"}
                          :uri-base "api.github.com/"}]
                (setmetatable self {:__index hub})))

(fn github.repo-query [owner repo]
  (.. "repos/" owner "/" repo))

(fn github.latest-commit-query [owner repo ref]
  (.. "repos/" owner "/" repo "/commits/" ref))

(fn github.tarball-uri [owner repo rev]
  (.. "https://github.com/" owner "/" repo "/archive/" rev ".tar.gz"))

(fn github.preprocess/repo
  [{: default_branch : description : homepage : license : name : owner}]
  {:owner owner.login
   :repo name
   : default_branch
   :description (unless (json.null? description) description)
   :homepage (unless (json.null? homepage) homepage)
   :license (unless (json.null? license) license.spdx_id)})

(fn github.preprocess/latest-commit [{: sha : commit}]
  {:rev sha :timestamp commit.committer.date})


(local gitlab (let [self {:site :gitlab.com
                          :token_ {:env "GITLAB_TOKEN"}
                          :uri-base "gitlab.com/api/v4/"}]
                (setmetatable self {:__index hub})))

(fn gitlab.repo-query [owner repo]
  (.. "projects/" owner "%2F" repo))

(fn gitlab.latest-commit-query [owner repo ref]
  (.. "projects/" owner "%2F" repo "/repository/branches/" ref))

(fn gitlab.tarball-uri [owner repo rev]
  (.. "https://gitlab.com/" owner "/" repo "/-/archive/" rev ".tar.gz"))

(fn gitlab.preprocess/repo
  [{: default_branch : description : web_url : path : namespace}]
  {:owner namespace.path
   :repo path
   : default_branch
   :description (unless (json.null? description) description)
   :homepage (unless (json.null? web_url) web_url)})

(fn gitlab.preprocess/latest-commit [{: commit}]
  {:rev commit.id :timestamp commit.committed_date})


(local sourcehut (let [self {:site :git.sr.ht
                             :token_ {:env "SOURCEHUT_TOKEN"}
                             :uri-base "git.sr.ht/api/"}]
                   (setmetatable self {:__index hub})))

(fn sourcehut.repo-query [owner repo]
  (.. owner "/repos/" repo))

(fn sourcehut.latest-commit-query [owner repo]
  (.. owner "/repos/" repo "/log"))

(fn sourcehut.tarball-uri [owner repo rev]
  (.. "https://git.sr.ht/" owner "/" repo "/archive/" rev ".tar.gz"))

(fn sourcehut.preprocess/repo [{: description : owner : name}]
  {:owner owner.canonical_name
   :repo name
   :description (unless (json.null? description) description)
   :homepage (.. "https://git.sr.ht/" owner.canonical_name "/" name)})

(fn sourcehut.preprocess/latest-commit [{: results}]
  (let [commit (. results 1)]
    {:rev commit.id :timestamp commit.timestamp}))


(local codeberg (let [self {:site :codeberg.org
                            :token_ {:env "CODEBERG_TOKEN"}
                            :uri-base "codeberg.org/api/v1/"}]
                  (setmetatable self {:__index hub})))

(fn codeberg.repo-query [owner repo]
  (.. "repos/" owner "/" repo))

(fn codeberg.latest-commit-query [owner repo ref]
  (.. "repos/" owner "/" repo "/branches/" ref))

(fn codeberg.tarball-uri [owner repo rev]
  (.. "https://codeberg.org/" owner "/" repo "/archive/" rev ".tar.gz"))

(fn codeberg.preprocess/repo
  [{: default_branch : description : html_url : website : name : owner}]
  {:owner owner.username
   :repo name
   : default_branch
   :description (unless (json.null? description) description)
   :homepage (or (unless (json.null? website) website)
                 (unless (json.null? html_url) html_url))})

(fn codeberg.preprocess/latest-commit [{: commit}]
  {:rev commit.id :timestamp commit.timestamp})


(fn attach-stats [plugins]
  (let [sites (icollect [_ plugin (pairs plugins)] plugin.site)
        stats (merge! (frequencies/total sites))]
    (set stats.time (os.time))
    (values plugins stats)))


(local awesome-neovim {})

(fn awesome-neovim.fetch-readme []
  (let [site "raw.githubusercontent.com"
        owner "rockerBOO"
        repo "awesome-neovim"
        ref "main"
        path "/README.md"]
    (http.get (.. site "/" owner "/" repo "/" ref path))))

(fn awesome-neovim.parse-readme [readme]
  "Parse Awesome Neovim README.md and return a sequential table of tables,
in which site, owner, and repo information are extracted."
  (var state :init)
  (let [plugins []
        active-regex "^%s*%-%s+%[[^/]+/[^/]+%]%("
        plugin-regex ["^%s*%-%s+%[[^%]]+%]%(https?://([^/]+)/([^/]+)/([^/#%)]+)"
                      "^%s*%-%s+%[[^%]]+%]%(https?://([^/]+)/([^/#%)]+)"]
        done-regex "^%s*##+%s+Preconfigured%s+[Cc]onfiguration"]
    (each [line (readme:gmatch "[^\n]+") &until (= :done state)]
      (match state
        :init (when (line:match "^%s*##+%s+Plugin%s+[Mm]anager")
                (set state :active))
        :active (if (line:match active-regex)
                    (case (line:match (. plugin-regex 1))
                      (site owner repo)
                      (doto plugins
                        (table.insert {: site : owner : repo}))
                      _ (case (line:match (. plugin-regex 2))
                          (site repo)
                          (doto plugins
                            (table.insert {: site : repo}))))
                    (line:match done-regex)
                    (set state :done))))
    plugins))

(fn awesome-neovim.preprocess [plugins]
  "A bit of hand correction are needed:

- Some sourcehut plugins enlist their hub page sr.ht instead of git.sr.ht.
- Authors may enlist their homepage instead of repository URL."
  (collect [_ plugin (ipairs plugins)]
    (let [{: site : owner : repo}
          (if (= :sr.ht plugin.site)
              (doto plugin
                (tset :site :git.sr.ht))
              (= :cj.rs plugin.site)
              (doto plugin
                (tset :site :github.com)
                (tset :owner :cljoly)
                (tset :repo :telescope-repo.nvim))
              plugin)]
      (values (.. site :/ owner :/ repo) ; drop duplicates
              {: site : owner : repo}))))

(fn awesome-neovim.filter-plugins [plugins]
  "Some repos are actually not Neovim plugins."
  (collect [id plugin (pairs plugins)]
    (let [{: repo} plugin]
      (when (and (not= :tree-sitter-just repo)
                 (not= :cheovim repo)
                 (not= :panvimdoc repo))
        (values id plugin)))))

(fn awesome-neovim.get-plugins []
  (case-try (awesome-neovim.fetch-readme)
    readme (awesome-neovim.parse-readme readme)
    plugins (awesome-neovim.preprocess plugins)
    plugins (awesome-neovim.filter-plugins plugins)
    plugins (attach-stats plugins)
    (catch
      (_ msg) (log:error/nil "Failed to get Awesome Neovim plugins info: " msg))))


(local nixpkgs {})

(fn nixpkgs.fetch-vim-plugin-names [?channel]
  (assert/?type :string ?channel)
  (let [site "raw.githubusercontent.com"
        owner "NixOS"
        repo "nixpkgs"
        ref (or ?channel "nixpkgs-unstable")
        path "/pkgs/applications/editors/vim/plugins/vim-plugin-names"]
    (http.get (.. site "/" owner "/" repo "/" ref path))))

(fn nixpkgs.parse-vim-plugin-names [vim-plugin-names]
  "This CSV file has the following columns:

1. repository URL (https://${site}/${owner}/${repo}/),
2. branch name or commit hash (i.e., ref), and
3. alias that will be the nixpkgs attribute name in order to resolve naming
   conflict with the other plugins."
  (icollect [line (vim-plugin-names:gmatch "[^\n]+")]
    (when (line:match "^https://")
      (let [(site owner repo ref alias)
            (line:match "^https://([^/]+)/([^/]+)/([^/]+)/?,([^,]*),(.*)$")]
        {: site : owner : repo
         :ref (when (and (not= "" ref) (not= :HEAD ref)) ref)
         :alias (when (not= "" alias) alias)}))))

(fn nixpkgs.preprocess [plugins]
  (collect [_ {: site : owner : repo &as plugin} (ipairs plugins)]
    (values (.. site :/ owner :/ repo) plugin))) ; drop duplicates

(fn nixpkgs.get-plugins []
  (case-try (nixpkgs.fetch-vim-plugin-names)
    vim-plugin-names (nixpkgs.parse-vim-plugin-names vim-plugin-names)
    plugins (nixpkgs.preprocess plugins)
    plugins (attach-stats plugins)
    (catch
      (_ msg) (log:error/nil "Failed to get Nixpkgs Vim plugins info: " msg))))


(local *plugins* {:path "data/plugins/awesome-neovim.json"
                  :data {}})

(fn *plugins*.init! [self]
  (set hub.plugins self.data)
  (case (json.file->decoded self.path)
    plugins (each [_ plugin (ipairs plugins)]
              (let [{: site : owner : repo} plugin
                    key (.. site "/" owner "/" repo)]
                (tset self.data key plugin)))
    _ (log:error/exit "Failed to load plugins")))

(local *extra-fetchers* {:path "data/plugins/extra-fetchers.json"
                         :data {}})

(fn *extra-fetchers*.init! [self]
  (set hub.extra-fetchers self.data)
  (case (json.file->decoded self.path)
    fetchers (each [_ fetcher (ipairs fetchers)]
               (let [{: site : owner : repo} fetcher
                     key (.. site "/" owner "/" repo)]
                 (tset self.data key
                       (doto fetcher
                         (tset :site nil)
                         (tset :owner nil)
                         (tset :repo nil)))))
    _ (log:error/exit "Failed to load extra fetchers")))

(fn *extra-fetchers*.update-hashes! [self plugins]
  (each [_ plugin (ipairs plugins)]
    (let [{: site : owner : repo} plugin]
      (case (. self.data (.. site "/" owner "/" repo))
        fetchers
        (each [key expr (pairs fetchers)]
          (log:info "Extra hash (" key "): " site "/" owner "/" repo)
          (case (nix.prefetch expr)
            hash (tset plugin key hash)
            (_ msg) (log:error/nil msg)))))))


(fn update-awesome-neovim-plugins-number [awesome-neovim-stats]
  (assert/type :table awesome-neovim-stats)
  (case awesome-neovim-stats.total
    n (let [file "README.md"
            expr (.. "/^\\[b3]:/s|-[[:digit:]]+-|-" n "-|")]
        (case (os.execute (.. "sed -Ei " file " -e '" expr "'"))
          0 true
          _ (log:warn/nil "Failed to execute sed")))
    _ (log:warn "Something wrong with awesome-neovim stats!")))


(*plugins*:init!)
(*extra-fetchers*:init!)
(case-try (awesome-neovim.get-plugins)
  (awesome-neovim/plugins awesome-neovim/stats) (nixpkgs.get-plugins)
  (nixpkgs/plugins nixpkgs/stats)
  (let [(_ stats)
        ;; Irrelevant but I'm curious about the statistics.
        (attach-stats (difference awesome-neovim/plugins nixpkgs/plugins))
        plugins (icollect [_ plugin (stablepairs awesome-neovim/plugins)]
                  (let [{: site : owner : repo} plugin
                        known (. *plugins*.data (.. site "/" owner "/" repo))]
                    (doto known
                      (merge! plugin
                              (case plugin.site
                                :github.com (github:plugin plugin)
                                :gitlab.com (gitlab:plugin plugin)
                                (where (or :sr.ht :git.sr.ht)) (sourcehut:plugin plugin)
                                :codeberg.org (codeberg:plugin plugin)
                                _ {})))))]
    (values plugins stats))
  (awesome-neovim/plugins extra/stats)
  (do
    (log:info "Awesome Neovim plugins:\n" (view awesome-neovim/stats))
    (log:info "Nixpkgs Vim/Neovim plugins:\n" (view nixpkgs/stats))
    (log:info "Extra plugins:\n" (view extra/stats))
    (update-awesome-neovim-plugins-number awesome-neovim/stats)
    (each [name stats (pairs {:awesome-neovim awesome-neovim/stats
                              :nixpkgs nixpkgs/stats
                              :extra extra/stats})]
      (let [path (.. "data/stats/" name "/" stats.time ".json")]
        (json.decoded->file stats path)))
    (case (json.decoded->file awesome-neovim/plugins *plugins*.path)
      true (do
             (*extra-fetchers*:update-hashes! awesome-neovim/plugins)
             ;; NOTE: This should be done twice.
             (json.decoded->file/exit awesome-neovim/plugins *plugins*.path))
      (_ msg) (log:error/exit msg)))
  (catch _ (os.exit false)))

;; vim: lw+=unless,with-cache
