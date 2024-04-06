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
          overlays = [
            self.overlays.default
            (import ./nix/ci.nix)
          ];
        };
      in
      rec {
        packages = flake-utils.lib.filterPackages system pkgs.vimExtraPlugins;

        checks = packages;

        devShells = {
          inherit (pkgs) ci-update;
          default = pkgs.mkShell {
            inputsFrom = [ pkgs.ci-update ];
            packages = [
              pkgs.fennel-ls
              pkgs.nixfmt-rfc-style
            ];
          };
        };
      }
    );
}
