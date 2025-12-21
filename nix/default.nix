{ nixpkgs, ... }:
let
  inherit (nixpkgs.lib)
    genAttrs
    mapAttrs
    ;
  inherit (import ./lib.nix { inherit (nixpkgs) lib; })
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

  overlay = import ./overlay.nix;
in
rec {
  overlays.default = overlay;

  packages = forSystems (pkgs: filterVimPlugins pkgs.awesomeNeovimPlugins);

  checks = mapAttrs (_: ps: mapAttrNames (n: "check-${n}") ps) packages;
}
