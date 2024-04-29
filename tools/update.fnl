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
;;;; The results are processed out into `data/plugins-info/*.json`.
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
;;;; - `nix-prefetch-url`: to compute tarball sha256 hash,
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

(macro assert/type [typ x]
  `(when (not= ,typ (type ,x))
     (error (.. ,x " should be " ,typ ", got " (view ,x)))))

(macro assert/optional-type [typ x]
  `(when (and (not= nil ,x)
              (not= ,typ (type ,x)))
     (error (.. ,x " should be " ,typ ", got " (view ,x)))))

(macro assert/method [self x]
  `(when (not= :function (type (. ,self ,x)))
     (error "method '" ,x "' invalid or missing")))

(macro unless [condition & body]
  `(when (not ,condition) ,(unpack body)))

;;; ==========================================================================
;;; Logging utilities
;;; ==========================================================================

(fn %log [_ ...]
  (let [out io.stderr]
    (out:write "update.fnl: " ...)
    (out:write "\n")))

(local log (setmetatable {} {:__call %log}))

(fn log.warn [...]
  (let [out io.stderr]
    (out:write "update.fnl: [WARNING] " ...)
    (out:write "\n")))

(fn log.warn/nil [...]
  (log.warn ...)
  nil)

(fn log.error [...]
  (let [out io.stderr]
    (out:write "update.fnl: [ERROR] " ...)
    (out:write "\n")))

(fn log.error/nil [...]
  (log.error ...)
  nil)

(fn log.error/exit [...]
  (log.error ...)
  (os.exit false))

;;; ==========================================================================
;;; Table extras
;;; ==========================================================================

(fn merge! [left ...]
  (each [_ right (ipairs [...])]
    (each [k v (pairs right)]
      (tset left k v)))
  left)

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

;;; ==========================================================================
;;; File utilities
;;; ==========================================================================

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

;;; ==========================================================================
;;; JSON manipulation
;;; ==========================================================================

(local json {})

(fn json.null? [x]
  (or (= nil x)
      (= "" x)
      (= cjson.null x))) ; #<userdata NULL>

(fn json.file->object [path]
  (case (file->string path)
    str (cjson.decode str)
    (_ msg) (values nil msg)))

(fn json.file->jq [path]
  (case (io.popen (.. "jq -SM . '" path "' 2>/dev/null"))
    file (with-open [file file] (file:read :*a))
    (_ msg) (values nil msg)))

(fn json.format [str]
  "Use jq to format and sort keys in JSON string."
  (let [path (os.tmpname)]
    (case-try (string->file str path)
      true (json.file->jq path)
      str (do
            (os.remove path)
            str)
      (catch (_ msg) (do
                       (os.remove path)
                       (values nil msg))))))

(fn json.object->file [obj path]
  (case (cjson.encode obj)
    str (string->file (json.format str) path)
    (_ msg) (values nil msg)))

(fn json.object->file/exit [obj path]
  (case (json.object->file obj path)
    true (os.exit)
    (_ msg) (log.error/exit "failed to write '" path "': " msg)))

;;; ==========================================================================
;;; HTTP access
;;; ==========================================================================

(local http {})

(fn http.get [uri ?headers]
  (when (not= :string (type uri))
    (error "uri string expected, got " (view uri)))
  (when (and (not= nil ?headers)
             (not= :table (type ?headers)))
    (error (.. "header should be table, while got: " (view ?headers))))
  (let [uri (if (uri:match "^https?://")
                uri
                (.. "https://" uri))
        request (http/request.new_from_uri uri)]
    (when (not= nil ?headers)
      (each [k v (pairs ?headers)]
        (request.headers:append k v)))
    (case-try (request:go)
      (headers stream) (stream:get_body_as_string)
      (where body (= (headers:get ":status") :200))
      (values body headers)
      (catch _ (values nil (.. "failed to get contents from " uri)))))) 

;;; ==========================================================================
;;; Awesome Neovim ETL
;;;
;;; Fetch the README.md, parse it, do some data wrangling, and return
;;; a collection of plugin information tables. Each table has:
;;;
;;; - `site`: github.com, gitlab.com, etc.,
;;; - `owner`: repo owner name, and
;;; - `repo`: repo name.
;;; ==========================================================================

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
  (let [plugins-info []
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
                      (doto plugins-info
                        (table.insert {: site : owner : repo}))
                      _ (case (line:match (. plugin-regex 2))
                          (site repo)
                          (doto plugins-info
                            (table.insert {: site : repo}))))
                    (line:match done-regex)
                    (set state :done))))
    plugins-info))

(fn awesome-neovim.preprocess [plugins-info]
  "A bit of hand correction are needed:

- Some sourcehut plugins enlist their hub page sr.ht instead of git.sr.ht.
- Authors may enlist their homepage instead of repository URL."
  (collect [_ plugin-info (ipairs plugins-info)]
    (let [{: site : owner : repo}
          (if (= :sr.ht plugin-info.site)
              (doto plugin-info
                (tset :site :git.sr.ht))
              (= :cj.rs plugin-info.site)
              (doto plugin-info
                (tset :site :github.com)
                (tset :owner :cljoly)
                (tset :repo :telescope-repo.nvim))
              plugin-info)]
      (values (.. site :/ owner :/ repo) ; drop duplicates
              {: site : owner : repo}))))

(fn awesome-neovim.filter-plugins [plugins-info]
  "Some repos are actually not Neovim plugins."
  (collect [id plugin-info (pairs plugins-info)]
    (when (not= :tree-sitter-just plugin-info.repo)
      (values id plugin-info))))

(fn awesome-neovim.get-plugins-info []
  (case-try (awesome-neovim.fetch-readme)
    readme (awesome-neovim.parse-readme readme)
    plugins-info (awesome-neovim.preprocess plugins-info)
    plugins-info (awesome-neovim.filter-plugins plugins-info)
    plugins-info
    (let [stats (merge! (frequencies/total (icollect [_ p (pairs plugins-info)]
                                             p.site)))]
      (set stats.time (os.time))
      (log "fetched Awesome Neovim plugins info: " (view stats))
      (values plugins-info stats))
    (catch
      (_ msg) (log.error/nil "failed to get Awesome Neovim plugins info: " msg))))

;;; ==========================================================================
;;; Nixpkgs Vim plugins ETL
;;;
;;; Fetch a CSV file `vim-plugin-names` that manifest Nixpkgs Vim plugins,
;;; parse it, do some data wrangling, and return a collection of plugin
;;; information tables. Each table has:
;;;
;;; - `site`: github.com, gitlab.com, etc.,
;;; - `owner`: repo owner name,
;;; - `repo`: repo name,
;;; - `ref`: branch name or commit hash, and
;;; - `alias`: used for resolving naming conflict in nixpkgs.
;;;
;;; The last two are actually not used in this script.
;;; ==========================================================================

(local nixpkgs {})

(fn nixpkgs.fetch-vim-plugin-names [?channel]
  (when (and (not= nil ?channel)
             (not= :string (type ?channel)))
    (error (.. "channel name should be string, got " (view ?channel))))
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

(fn nixpkgs.preprocess [plugins-info]
  (collect [_ {: site : owner : repo &as plugin-info} (ipairs plugins-info)]
    (values (.. site :/ owner :/ repo) ; drop duplicates
            plugin-info)))

(fn nixpkgs.get-plugins-info []
  (case-try (nixpkgs.fetch-vim-plugin-names)
    vim-plugin-names (nixpkgs.parse-vim-plugin-names vim-plugin-names)
    plugins-info (nixpkgs.preprocess plugins-info)
    plugins-info
    (let [stats (merge! (frequencies/total (icollect [_ p (pairs plugins-info)]
                                             p.site)))]
      (set stats.time (os.time))
      (log "fetched Nixpkgs Vim plugins info: " (view stats))
      (values plugins-info stats))
    (catch
      (_ msg) (log.error/nil "failed to get Nixpkgs Vim plugins info: " msg))))

;;; ==========================================================================
;;; Nix helpers
;;; ==========================================================================

(local nix {})

(fn nix.prefetch-url [url]
  (with-open [pipe (io.popen (.. "nix-prefetch-url " url " 2>/dev/null"))]
    (let [out (pipe:read :*a)]
      (if (not= "" out)
          (pick-values 1 (out:gsub "\n+" ""))
          (values nil "failed to run nix-prefetch-url")))))

(fn nix.prefetch [expr]
  (with-open [pipe (io.popen (.. "nix-prefetch '" expr "' 2>/dev/null"))]
    (let [out (pipe:read :*a)]
      (if (not= "" out)
          (pick-values 1 (out:gsub "\n+" ""))
          (values nil "failed to run nix-prefetch")))))

;;; ==========================================================================
;;; Cache REST API query results
;;; ==========================================================================

(var use-cache? false)

(macro with-cache [path & body]
  "If the cache is younger than 23 hours, use it; otherwise regenerate data."
  (let [too-old? `(fn [age#] (< age# (- (os.time) (* 23 60 60))))]
    `(if use-cache?
         (let [cache# (json.file->object ,path)]
           (if (and cache# (not (,too-old? cache#.time)))
               cache#
               (let [out# (do ,(unpack body))]
                 (case (json.object->file out# ,path)
                   true out#
                   (_# msg#) (error msg#)))))
         (do ,(unpack body)))))

;;; ==========================================================================
;;; GitHub, GitLab, etc. meta table
;;; ==========================================================================

(local hub {:site "missing.hub"
            :token {:env-var "MISSING_TOKEN"}
            :get-uri-base "api.missing-hub.com/"
            :current-plugins-info {}
            :extra-fetchers {}})

(fn hub.init-current-plugins-info! [path]
  (case (json.file->object path)
    plugins-info (each [_ plugin-info (ipairs plugins-info)]
                   (let [{: site : owner : repo} plugin-info
                         key (.. site :/ owner :/ repo)]
                     (tset hub.current-plugins-info key
                           (doto plugin-info
                             (tset :site nil)
                             (tset :owner nil)
                             (tset :repo nil)))))
    _ (log.error/exit "failed to load current plugins info")))

(fn hub.init-extra-fetchers! [path]
  (case (json.file->object path)
    extra-fetchers (each [_ extra-fetcher (ipairs extra-fetchers)]
                     (let [{: site : owner : repo} extra-fetcher
                           key (.. site :/ owner :/ repo)]
                       (tset hub.extra-fetchers key
                             (doto extra-fetcher
                               (tset :site nil)
                               (tset :owner nil)
                               (tset :repo nil)))))
    _ (log.error/exit "failed to load extra fetchers")))

(fn hub.get-token [self]
  (if self.token.missing?
      nil
      (or self.token.cache
          (case (os.getenv self.token.env-var)
            token (do
                    (set self.token.cache token)
                    token)
            _ (do
                (log.warn (.. "missing " self.token.env-var))
                (set self.token.missing? true)
                nil)))))

(fn hub.get [self query ?token]
  (assert/type :string query)
  (assert/optional-type :string ?token)
  (let [token (or ?token (self:get-token))
        request-headers
        {:content-type "application/json"
         :authorization (when token (.. "token " token))}]
    (case (http.get (.. self.get-uri-base query) request-headers) 
      (body headers) (values (cjson.decode body) headers)
      (_ msg) (values nil msg))))

(fn hub.repo-info-cache-path [self owner repo]
  (assert/type :string owner)
  (assert/type :string repo)
  (.. "data/cache/site=" self.site "/owner=" owner "/repo=" repo "/info.json"))

(fn hub.latest-commit-info-cache-path [self owner repo ?ref]
  (assert/type :string owner)
  (assert/type :string repo)
  (assert/optional-type :string ?ref)
  (.. "data/cache/site=" self.site "/owner=" owner "/repo=" repo "/refs/"
      (if ?ref (.. ?ref ".json") "default.json")))

(fn hub.get-repo-info [self {: owner : repo}]
  (assert/type :string owner)
  (assert/type :string repo)
  (assert/method self :repo-info-uri-path)
  (assert/method self :preprocess/repo-info)
  (with-cache (self:repo-info-cache-path owner repo)
    (log "query " self.site " repo: " owner "/" repo)
    (case (self:get (self.repo-info-uri-path owner repo))
      info (let [info (self.preprocess/repo-info info)]
             (when (not= owner info.owner)
               (log.warn "owner changed: " owner " -> " info.owner)
               (tset info :owner owner))
             (when (not= repo info.repo)
               (log.warn "repo changed: " repo " -> " info.repo)
               (tset info :repo repo))
             (doto info
               (tset :time (os.time))))
      (_ msg) (log.error/nil msg))))

(fn hub.get-tarball-info [self {: owner : repo : rev}]
  (assert/method self :tarball-uri)
  (let [url (self.tarball-uri owner repo rev)]
    (log "update sha256 hash: " url)
    (case (nix.prefetch-url url)
      sha256 {: url : sha256}
      (_ msg) (log.error/nil (.. "failed to get tarball hash: " msg)))))

(fn hub.current-commit-info [self {: owner : repo}]
  (assert/type :string owner)
  (assert/type :string repo)
  (let [key (.. self.site :/ owner :/ repo)]
    (case (. hub.current-plugins-info key)
      any (doto any
            (tset :description nil)
            (tset :homepage nil)
            (tset :license nil))
      _ {})))

(fn hub.get-latest-commit-info [self {: owner : repo : ref}]
  (assert/type :string owner)
  (assert/type :string repo)
  (assert/optional-type :string ref)
  (assert/method self :latest-commit-info-uri-path)
  (assert/method self :preprocess/latest-commit-info)
  (with-cache (self:latest-commit-info-cache-path owner repo ref)
    (log "query " self.site " latest commit: " owner "/" repo
         (unpack (if ref ["/" ref] [])))
    (let [current (self:current-commit-info {: owner : repo})]
      (case (self:get (self.latest-commit-info-uri-path owner repo ref))
        latest (let [latest (self.preprocess/latest-commit-info latest)]
                 (if (= current.rev latest.rev)
                     (doto current
                       (tset :time (os.time)))
                     (case (self:get-tarball-info {: owner : repo
                                                   :rev latest.rev})
                       {: url : sha256} (doto current
                                          (merge! latest)
                                          (tset :time (os.time))
                                          (tset :url url)
                                          (tset :sha256 sha256))
                       _ current)))
        (_ msg) (log.error/nil msg)))))

(fn timestamp->date [timestamp]
  (assert/type :string timestamp)
  (case (timestamp:match "^%d%d%d%d%-%d%d%-%d%d")
    date date
    _ (error "failed to convert timestamp to date")))

(fn hub.get-all-info [self {: owner : repo : ref}]
  (case-try (self:get-repo-info {: owner : repo})
    repo-info
    (self:get-latest-commit-info {: owner : repo
                                  :ref (or ref repo-info.default_branch)})
    latest-commit-info
    (doto (merge! repo-info latest-commit-info)
      (tset :default_branch nil)
      (tset :time nil)
      (tset :timestamp nil)
      (tset :date (or latest-commit-info.date
                      (timestamp->date latest-commit-info.timestamp))))
    (catch _ nil)))

;;; ==========================================================================
;;; GitHub query
;;; ==========================================================================

(local github (let [self {:site :github.com
                          :token {:env-var "GITHUB_TOKEN"}
                          :get-uri-base "api.github.com/"}]
                (setmetatable self {:__index hub})))

(fn github.repo-info-uri-path [owner repo]
  (.. "repos/" owner "/" repo))

(fn github.latest-commit-info-uri-path [owner repo ref]
  (.. "repos/" owner "/" repo "/commits/" ref))

(fn github.tarball-uri [owner repo rev]
  (.. "https://github.com/" owner "/" repo "/archive/" rev ".tar.gz"))

(fn github.preprocess/repo-info
  [{: default_branch : description : homepage : license : name : owner}]
  {:owner owner.login
   :repo name
   : default_branch
   :description (unless (json.null? description) description)
   :homepage (unless (json.null? homepage) homepage)
   :license (unless (json.null? license) license.spdx_id)})

(fn github.preprocess/latest-commit-info [{: sha : commit}]
  {:rev sha :timestamp commit.committer.date})

;;; ==========================================================================
;;; GitLab query
;;; ==========================================================================

(local gitlab (let [self {:site :gitlab.com
                          :token {:env-var "GITLAB_TOKEN"}
                          :get-uri-base "gitlab.com/api/v4/"}]
                (setmetatable self {:__index hub})))

(fn gitlab.repo-info-uri-path [owner repo]
  (.. "projects/" owner "%2F" repo))

(fn gitlab.latest-commit-info-uri-path [owner repo ref]
  (.. "projects/" owner "%2F" repo "/repository/branches/" ref))

(fn gitlab.tarball-uri [owner repo rev]
  (.. "https://gitlab.com/" owner "/" repo "/-/archive/" rev ".tar.gz"))

(fn gitlab.preprocess/repo-info
  [{: default_branch : description : web_url : path : namespace}]
  {:owner namespace.path
   :repo path
   : default_branch
   :description (unless (json.null? description) description)
   :homepage (unless (json.null? web_url) web_url)})

(fn gitlab.preprocess/latest-commit-info [{: commit}]
  {:rev commit.id :timestamp commit.committed_date})

;;; ==========================================================================
;;; SourceHut query
;;; ==========================================================================

(local sourcehut (let [self {:site :git.sr.ht
                             :token {:env-var "SOURCEHUT_TOKEN"}
                             :get-uri-base "git.sr.ht/api/"}]
                   (setmetatable self {:__index hub})))

(fn sourcehut.repo-info-uri-path [owner repo]
  (.. owner "/repos/" repo))

(fn sourcehut.latest-commit-info-uri-path [owner repo]
  (.. owner "/repos/" repo "/log"))

(fn sourcehut.tarball-uri [owner repo rev]
  (.. "https://git.sr.ht/" owner "/" repo "/archive/" rev ".tar.gz"))

(fn sourcehut.preprocess/repo-info [{: description : owner : name}]
  {:owner owner.canonical_name
   :repo name
   :description (unless (json.null? description) description)
   :homepage (.. "https://git.sr.ht/" owner.canonical_name "/" name)})

(fn sourcehut.preprocess/latest-commit-info [{: results}]
  (let [commit (. results 1)]
    {:rev commit.id :timestamp commit.timestamp}))

;;; ==========================================================================
;;; Codeberg query
;;; ==========================================================================

(local codeberg (let [self {:site :codeberg.org
                            :token {:env-var "CODEBERG_TOKEN"}
                            :get-uri-base "codeberg.org/api/v1/"}]
                  (setmetatable self {:__index hub})))

(fn codeberg.repo-info-uri-path [owner repo]
  (.. "repos/" owner "/" repo))

(fn codeberg.latest-commit-info-uri-path [owner repo ref]
  (.. "repos/" owner "/" repo "/branches/" ref))

(fn codeberg.tarball-uri [owner repo rev]
  (.. "https://codeberg.org/" owner "/" repo "/archive/" rev ".tar.gz"))

(fn codeberg.preprocess/repo-info
  [{: default_branch : description : html_url : website : name : owner}]
  {:owner owner.username
   :repo name
   : default_branch
   :description (unless (json.null? description) description)
   :homepage (or (unless (json.null? website) website)
                 (unless (json.null? html_url) html_url))})

(fn codeberg.preprocess/latest-commit-info [{: commit}]
  {:rev commit.id :timestamp commit.timestamp})

;;; ==========================================================================
;;; Editing README.md
;;; ==========================================================================

(fn update-awesome-neovim-plugins-number [awesome-neovim-stats]
  (assert/type :table awesome-neovim-stats)
  (case (. awesome-neovim-stats :total)
    n (let [file "README.md"
            expr (.. "/^\\[b3]:/s|-[[:digit:]]+-|-" n "-|")]
        (case (os.execute (.. "sed -Ei " file " -e '" expr "'"))
          0 true
          _ (log.warn/nil "failed to execute sed")))
    _ (log.warn "something wrong with awesome-neovim stats!")))

;;; ==========================================================================
;;; Update extra hashes such as cargoSha256 for Rust binary
;;; ==========================================================================

(fn update-extra-hashes! [plugins-info]
  (each [_ plugin-info (ipairs plugins-info)]
    (let [{: site : owner : repo} plugin-info]
      (case (. hub.extra-fetchers (.. site :/ owner :/ repo))
        fetchers (each [key expr (pairs fetchers)]
                   (tset plugin-info key (nix.prefetch expr)))))))

;;; ==========================================================================
;;; Main
;;; ==========================================================================

(when (= :--use-cache ...)
  (set use-cache? true))

(local plugins-info-path "data/plugins-info/awesome-neovim.json")
(hub.init-current-plugins-info! plugins-info-path)

(local extra-fetchers-path "data/plugins-info/extra-fetchers.json")
(hub.init-extra-fetchers! extra-fetchers-path)

(case-try (awesome-neovim.get-plugins-info)
  (awesome-neovim/plugins-info awesome-neovim/stats)

  ;; Irrelevant but I'm curious about the statistics.
  (nixpkgs.get-plugins-info)
  (nixpkgs/plugins-info nixpkgs/stats)

  (let [plugins-info (difference awesome-neovim/plugins-info
                                 nixpkgs/plugins-info)
        stats (merge! (frequencies/total (icollect [_ p (pairs plugins-info)]
                                           p.site)))]
    (set stats.time (os.time))
    (values (icollect [_ plugin-info (stablepairs awesome-neovim/plugins-info)]
              (doto plugin-info
                (merge! (case plugin-info.site
                          :github.com
                          (github:get-all-info plugin-info)
                          :gitlab.com
                          (gitlab:get-all-info plugin-info)
                          (where (or :sr.ht :git.sr.ht))
                          (sourcehut:get-all-info plugin-info)
                          :codeberg.org
                          (codeberg:get-all-info plugin-info)
                          _ {}))))
            stats))
  (awesome-neovim/plugins-info extra/stats)

  (do
    (log "fetched extra plugins info: " (view extra/stats))
    (update-awesome-neovim-plugins-number awesome-neovim/stats)
    (each [name stats (pairs {:awesome-neovim awesome-neovim/stats
                              :nixpkgs nixpkgs/stats
                              :extra extra/stats})]
      (json.object->file stats (.. "data/stats/" name "/" stats.time ".json")))
    (case (json.object->file awesome-neovim/plugins-info plugins-info-path)
      true (do
             (update-extra-hashes! awesome-neovim/plugins-info)
             (json.object->file/exit awesome-neovim/plugins-info
                                     plugins-info-path))
      (_ msg) (log.error/exit msg)))

  (catch _ (os.exit false)))

;; vim: lw+=unless,with-cache
