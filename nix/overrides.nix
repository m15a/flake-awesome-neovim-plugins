final: prev:

let
  inherit (final) lib;
  inherit (builtins)
    hasAttr
    mapAttrs
    ;
  inherit (lib)
    composeManyExtensions
    filterAttrs
    licenses
    optionals
    ;
  utils = import ./utils.nix { inherit lib; };

  filterConfig = filterAttrs (name: _: hasAttr name prev.awesomeNeovimPlugins);

  # Mark broken packages here.
  overrideBroken =
    self: super:
    let
      f =
        pluginName: broken:
        super.${pluginName}.overrideAttrs (old: {
          meta = old.meta // {
            inherit broken;
          };
        });
    in
    mapAttrs f (filterConfig {
      # Build failed with `E154: Duplicate tag`
      apc-nvim = true;
      pckr-nvim = true;
      unruly-worker-nvim = true;
    });

  # Add homepage if missing or incorrect.
  overrideHomepage =
    self: super:
    let
      f =
        pluginName: homepage:
        super.${pluginName}.overrideAttrs (old: {
          meta = old.meta // {
            inherit homepage;
          };
        });
    in
    mapAttrs f (filterConfig {
      ataraxis-lua = "https://sr.ht/~henriquehbr/ataraxis.lua/";
      nvim-startup-lua = "https://sr.ht/~henriquehbr/nvim-startup.lua/";
      lsp-lines-nvim = "https://sr.ht/~whynothugo/lsp_lines.nvim/";
    });

  # Add licenses if missing or incorrect.
  overrideLicense =
    self: super:
    let
      f =
        pluginName: license:
        super.${pluginName}.overrideAttrs (old: {
          meta = old.meta // {
            inherit license;
          };
        });
    in
    mapAttrs f (
      filterConfig (
        with licenses;
        {
          ataraxis-lua = gpl3;
          nvim-startup-lua = mit;
          auto-format-nvim = mit;
          nedia-auto-save-nvim = mit;
          lsp-lines-nvim = isc;
          distinct-nvim = mit;
          halfspace-nvim = mit;
          vitesse-nvim = mit;
          nvim-cartographer = gpl3Plus;
          nvim-highlite = gpl3Plus;
          scratch-nvim = gpl3Plus;
          nvim-colorizer-lua = gpl3Plus;
          nvim-remote-containers = {
            fullName = "modified MIT License";
            free = false;
            redistributable = false;
          };
          nvim-tree-lua = gpl3Plus;
          oceanic-next = asl20;
          nvim-base16-lua = mit;
          arrow-nvim = gpl3Plus;
          telescope-alternate-nvim = gpl3Plus;
          quarto-nvim = gpl2Plus;
          bamboo-nvim = mit;
          pounce-nvim = asl20;
          killersheep-nvim = vim;
          diffview-nvim = gpl3Plus;
          hop-nvim = bsd3;
          yawnc-nvim = {
            fullName = "Do whatever, just give credits where credits are do.";
            free = true;
            redistributable = true;
          };
          neosolarized-nvim = mit;
          nvim-deus = gpl3Plus;
        }
        // (
          let
            fossil = {
              fullName = "FOSSIL | Fair Open-Source Software International License v1.0.2";
              free = true;
              redistributable = true;
            };
          in
          {
            duplicate-nvim = fossil;
            lsp-timeout-nvim = fossil;
          }
        )
      )
    );

  # Declare plugins that depend on plenary.nvim.
  overridePlenaryConsumers =
    self: super:
    let
      f =
        pluginName: isConsumer:
        super.${pluginName}.overrideAttrs (old: {
          dependencies =
            (old.dependencies or [ ]) ++ optionals isConsumer [ self.plenary-nvim ];
        });
    in
    mapAttrs f (filterConfig {
      flutter-tools-nvim = true;
      fzf-lsp-nvim = true;
      kiwi-nvim = true;
      luau-lsp-nvim = true;
      octo-nvim = true;
      telescope-nvim = true;
    });

  # Declare plugins that depend on nvim-lspconfig.
  overrideLspConfigConsumers =
    self: super:
    let
      f =
        pluginName: isConsumer:
        super.${pluginName}.overrideAttrs (old: {
          dependencies =
            (old.dependencies or [ ]) ++ optionals isConsumer [ self.nvim-lspconfig ];
        });
    in
    mapAttrs f (filterConfig {
      lsp-lines-nvim = true;
      lsp-setup-nvim = true;
      nvim-lspupdate = true;
      lsp-timeout-nvim = true;
      lsp-format-nvim = true;
      nlsp-settings-nvim = true;
      go-nvim = true;
    });

  # Declare plugins that depend on nvim-treesitter.
  overrideTreesitterConsumers =
    self: super:
    let
      f =
        pluginName: isConsumer:
        super.${pluginName}.overrideAttrs (old: {
          dependencies =
            (old.dependencies or [ ]) ++ optionals isConsumer [ self.nvim-treesitter ];
        });
    in
    mapAttrs f (filterConfig {
      lspsaga-nvim = true;
      nvim-trevJ-lua = true;
      nvcode-color-schemes-vim = true;
      nvim-ts-context-commentstring = true;
      treesitter-outer = true;
      treesitter-utils = true;
      nvim-treesitter-textsubjects = true;
      ultimate-autopair-nvim = true;
      agrolens-nvim = true;
      nvim-context-vt = true;
      nvim-treehopper = true;
      iswap-nvim = true;
      nvim-treesitter-context = true;
      nvim-treesitter-textobjects = true;
      go-nvim = true;
      nvim-comment-frame = true;
      nvim-ts-autotag = true;
      syntax-tree-surfer = true;
    });

  # Add Telescope extension dependencies.
  overrideTelescopeExtensions =
    self: super:
    let
      f =
        pluginName: pkg:
        if utils.looksLikeTelescopeExtension pluginName then
          pkg.overrideAttrs (old: {
            dependencies = (old.dependencies or [ ]) ++ [ self.telescope-nvim ];
          })
        else
          pkg;
    in
    mapAttrs f super;

  # Declare plugins that depend on telescope.nvim.
  overrideTelescopeConsumers =
    self: super:
    let
      f =
        pluginName: isConsumer:
        super.${pluginName}.overrideAttrs (old: {
          dependencies =
            (old.dependencies or [ ]) ++ optionals isConsumer [ self.telescope-nvim ];
        });
    in
    mapAttrs f (filterConfig {
      agrolens-nvim = true;
      octo-nvim = true;
      crusj-bookmarks-nvim = true;
      search-nvim = true;
      spectacle-nvim = true;
      telekasten-nvim = true;
      toggletasks-nvim = true;
    });

  # Add dependencies if needed.
  overrideDependencies =
    self: super:
    let
      f =
        pluginName: dependencies:
        super.${pluginName}.overrideAttrs (old: {
          dependencies = (old.dependencies or [ ]) ++ dependencies;
        });
    in
    mapAttrs f (
      filterConfig (
        with self;
        {
          nvim-lsputils = [ final.vimPlugins.popfix ];
          lspsaga-nvim = [ nvim-web-devicons ];
          trouble-nvim = [ nvim-web-devicons ];

          # Telescope extensions extra dependencies
          telescope-git-file-history-nvim = [ final.vimPlugins.vim-fugitive ];

          codeschool-nvim = [ lush-nvim ];
          haskell-snippets-nvim = [ LuaSnip ];
          toggletasks-nvim = [ toggleterm-nvim ];
          vs-tasks-nvim = [ telescope-nvim ];
        }
      )
    );

  # Add overrides more.
  overrideMore =
    self: super:
    (filterConfig {
      # Example:
      #
      # markdown-preview-nvim = super.markdown-preview-nvim.overrideAttrs (_: {
      #   nativeBuildInputs = [ final.nodejs ];
      # });

      # Modified from:
      # pkgs/applications/editors/vim/plugins/nvim-treesitter/overrides.nix
      #
      # Copyright (c) 2003-2024 Eelco Dolstra and the Nixpkgs/NixOS contributors
      #
      # Permission is hereby granted, free of charge, to any person obtaining
      # a copy of this software and associated documentation files (the
      # "Software"), to deal in the Software without restriction, including
      # without limitation the rights to use, copy, modify, merge, publish,
      # distribute, sublicense, and/or sell copies of the Software, and to
      # permit persons to whom the Software is furnished to do so, subject to
      # the following conditions:
      #
      # The above copyright notice and this permission notice shall be
      # included in all copies or substantial portions of the Software.
      #
      # THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
      # EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
      # MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
      # NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
      # LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
      # OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
      # WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
      nvim-treesitter = super.nvim-treesitter.overrideAttrs (old: {
        postPatch = "rm -r parser";

        passthru = (old.passthru or { }) // rec {
          inherit (final.vimPlugins.nvim-treesitter)
            builtGrammars
            allGrammars
            grammarToPlugin
            grammarPlugins
            ;

          withPlugins =
            f:
            self.nvim-treesitter.overrideAttrs (old: {
              name = old.name + "-with-plugins";
              passthru.dependencies = map grammarToPlugin (
                f (final.treesitter.builtGrammars // builtGrammars)
              );
            });

          withAllGrammars = withPlugins (_: allGrammars);
        };
      });
    });
in
{
  awesomeNeovimPlugins = prev.awesomeNeovimPlugins.extend (composeManyExtensions [
    overrideBroken
    overrideHomepage
    overrideLicense
    overridePlenaryConsumers
    overrideLspConfigConsumers
    overrideTreesitterConsumers
    overrideTelescopeExtensions
    overrideTelescopeConsumers
    overrideDependencies
    overrideMore
  ]);
}
