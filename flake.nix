{
  description = "Nix flake of Awesome Neovim plugins";

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
        awesome-neovim-plugins = import ./nix/overlay.nix;
        default = awesome-neovim-plugins;
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
        packages = flake-utils.lib.filterPackages system pkgs.awesomeNeovimPlugins;

        checks = packages;

        devShells = {
          inherit (pkgs) ci-update ci-check-format ci-datasci;
          default = pkgs.mkShell {
            inputsFrom = [
              pkgs.ci-update
              pkgs.ci-check-format
              pkgs.ci-datasci
            ];
            packages = [ pkgs.fennel-ls ] ++ (with pkgs.luajit.pkgs; [ readline ]);
          };
        };
      }
    );
}
