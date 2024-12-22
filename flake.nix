{
  description = "Nix flake of Awesome Neovim plugins";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    flake-compat = {
      url = "github:edolstra/flake-compat";
      flake = false;
    };
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
    let
      inherit (flake-utils.lib) eachDefaultSystem filterPackages;
    in
    {
      overlays.default = import ./nix/overlay.nix;
    }
    // eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [
            self.overlays.default
            (import ./nix/ci.nix)
          ];
        };
        treefmtEval = treefmt-nix.lib.evalModule pkgs ./treefmt.nix;
      in
      rec {
        packages = filterPackages system pkgs.awesomeNeovimPlugins;
        formatter = treefmtEval.config.build.wrapper;
        checks = packages // {
          format = treefmtEval.config.build.check self;
        };
        inherit (pkgs) devShells;
      }
    );
}
