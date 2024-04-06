{
  description = "Nix flake of miscellaneous Vim/Neovim plugins";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    flake-compat = {
      url = "github:edolstra/flake-compat";
      flake = false;
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      ...
    }:
    {
      overlays = rec {
        vim-extra-plugins = import ./nix/overlay.nix;
        default = vim-extra-plugins;
      };
    }
    // flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ self.overlays.default ];
        };
      in
      rec {
        packages = flake-utils.lib.filterPackages system pkgs.vimExtraPlugins;

        checks = packages;

        devShells.default =
          let
            lua = pkgs.luajit.withPackages (
              ps: with ps; [
                http
                cjson
              ]
            );
          in
          pkgs.mkShell {
            packages =
              [
                pkgs.jq
                pkgs.nix-prefetch-git
                lua
                lua.pkgs.fennel
                pkgs.fennel-ls
                pkgs.nixfmt-rfc-style
              ]
              ++ (with lua.pkgs; [
                http
                cjson
                readline
              ]);
          };
      }
    );
}
