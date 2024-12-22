{
  description = "Nix flake of Awesome Neovim plugins";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    flake-compat.url = "github:edolstra/flake-compat";
    flake-compat.flake = false;
    treefmt-nix.url = "github:numtide/treefmt-nix";
    treefmt-nix.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      treefmt-nix,
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
        treefmt = treefmt-nix.lib.evalModule pkgs ./treefmt.nix;
      in
      rec {
        packages = flake-utils.lib.filterPackages system pkgs.awesomeNeovimPlugins;
        formatter = treefmt.config.build.wrapper;
        checks = packages // {
          format = treefmt.config.build.check self;
        };
        inherit (pkgs) devShells;
      }
    );
}
