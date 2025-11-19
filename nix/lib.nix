{ lib, ... }:

let
  inherit (builtins)
    isAttrs
    ;
  inherit (lib)
    filterAttrs
    mapAttrs
    mapAttrs'
    nameValuePair
    ;
in

{
  checkPackages =
    packages:
    mapAttrs (_: ps: mapAttrs' (n: p: nameValuePair "check-${n}" p) ps) packages;

  filterVimPlugins = filterAttrs (
    _: v: isAttrs v && (v.vimPlugin or false) && !(v.meta.broken or false)
  );

  systems = [
    "x86_64-linux"
    "x86_64-darwin"
    "aarch64-linux"
    "aarch64-darwin"
  ];
}
