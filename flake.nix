{
  description = "Nix flake of Awesome Neovim plugins";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    flake-compat.url = "github:edolstra/flake-compat";
    flake-compat.flake = false;
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      ...
    }:
    {
      overlays.default = import ./nix/overlay.nix;
    }
    // flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [
            self.overlays.default
            (import ./nix/dev-shells.nix)
          ];
        };
      in
      rec {
        packages = flake-utils.lib.filterPackages system pkgs.awesomeNeovimPlugins;
        checks = packages;
        inherit (pkgs) devShells;
      }
    );
}
