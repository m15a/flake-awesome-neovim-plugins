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
    id
    ;

  attrs = rec {
    mapAttrs2 =
      f: g: attrs:
      mapAttrs' (k: v: nameValuePair (f k) (g v)) attrs;

    mapAttrNames = f: attrs: mapAttrs2 f id attrs;
  };

  vim = rec {
    isVimPlugin = x: isAttrs x && (x.vimPlugin or false);

    filterVimPlugins = filterAttrs (
      _: v: (isVimPlugin v) && !(v.meta.broken or false)
    );
  };

  systems = [
    "x86_64-linux"
    "x86_64-darwin"
    "aarch64-linux"
    "aarch64-darwin"
  ];
in

{
  inherit (attrs)
    mapAttrs2
    mapAttrNames
    ;

  inherit (vim)
    isVimPlugin
    filterVimPlugins
    ;

  inherit systems;
}
