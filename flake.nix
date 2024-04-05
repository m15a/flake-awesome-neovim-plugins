{
  description = "Nix flake of miscellaneous Vim/Neovim plugins";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    flake-compat = {
      url = "github:edolstra/flake-compat";
      flake = false;
    };
    fennel-tools = {
      url = "github:m15a/flake-fennel-tools";
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, flake-utils, fennel-tools, ... }:
    {
      overlays = rec {
        vim-extra-plugins = import ./nix/overlay.nix;
        default = vim-extra-plugins;
      };
    } // flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [
            fennel-tools.overlays.default
            self.overlays.default
          ];
        };

        fennel = pkgs.fennel-unstable-luajit.override {
          lua = pkgs.luajit.withPackages (ps: with ps; [ http cjson ]);
        };
      in rec {
        packages = flake-utils.lib.filterPackages system pkgs.vimExtraPlugins;

        checks = packages;

        devShells.default = pkgs.mkShell {
          packages = with pkgs;
            [
              jq
              nix-prefetch-git
              fennel
              fennel.lua
              fennel-ls-unstable
              fnlfmt-unstable
              nixfmt
            ] ++ (with fennel.lua.pkgs; [
              http
              cjson
              readline
            ]);
        };
      });
}
