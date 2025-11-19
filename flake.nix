{
  description = "A Nix flake providing the Awesome Neovim plugins";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs =
    { nixpkgs, ... }:
    let
      inherit (nixpkgs.lib)
        genAttrs
        mapAttrs
        ;
      inherit (import ./nix/lib.nix { inherit (nixpkgs) lib; })
        mapAttrNames
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

      checks = mapAttrs (_: ps: mapAttrNames (n: "check-${n}") ps) packages;
    };
}
