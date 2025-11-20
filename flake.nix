{
  description = "A Nix flake providing the Awesome Neovim plugins";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs =
    { nixpkgs, ... }:
    let
      inherit (nixpkgs.lib) genAttrs;
      inherit (import ./nix/lib.nix { inherit (nixpkgs) lib; })
        checkPackages
        filterVimPlugins
        systems
        ;

      forSystems =
        f:
        genAttrs systems (
          system:
          f (
            import nixpkgs {
              inherit system;
              overlays = [ overlay ];
            }
          )
        );

      overlay = import ./nix/overlay.nix;
    in
    rec {
      overlays.default = overlay;

      packages = forSystems (pkgs: filterVimPlugins pkgs.awesomeNeovimPlugins);

      checks = checkPackages packages;
    };
}
