{
  description = "A Nix flake providing the Awesome Neovim plugins";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-compat.url = "github:edolstra/flake-compat";
    flake-compat.flake = false;
  };

  outputs =
    {
      self,
      flake-utils,
      nixpkgs,
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
          overlays = [ self.overlays.default ];
        };
      in
      rec {
        packages = filterPackages system pkgs.awesomeNeovimPlugins;
        checks = packages;
      }
    );
}
