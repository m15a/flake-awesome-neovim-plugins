{ lib, ... }:

let
  inherit (builtins)
    isAttrs
    ;
  inherit (lib)
    filterAttrs
    mapAttrs'
    nameValuePair
    id
    ;

  attrsets = rec {
    mapAttrs2 =
      f: g: attrs:
      mapAttrs' (k: v: nameValuePair (f k) (g v)) attrs;

    mapAttrNames = f: attrs: mapAttrs2 f id attrs;
  };

  utils = rec {
    # Some plugins need their owner name to make meaningful pname;
    # e.g., catppuccin/nvim.
    hasMeaningfulRepo =
      pluginData: with pluginData; repo != "vim" && repo != "nvim" && repo != "neovim";

    # Some plugins of different owners have an identical repo name.
    hasUniqueRepoIn =
      pluginsData: pluginData:
      let
        n = lib.lists.length (
          lib.filter (p: toAttrName p.repo == toAttrName pluginData.repo) pluginsData
        );
      in
      if n == 0 then throw "unseen plugin" else n == 1;

    # Check if the given attrset has mandatory plugin attrs.
    isPluginData =
      attrs:
      attrs ? "date"
      && attrs ? "owner"
      && attrs ? "repo"
      && attrs ? "rev"
      && attrs ? "sha256"
      && attrs ? "url";

    # If pname has prefix `telescope-`, it should be a telescope extension.
    looksLikeTelescopeExtension =
      pname: pname != "telescope-nvim" && builtins.match "(^|.+-)telescope-.+" pname != null;

    # Remove sourcehut owner name's prefix `~` if any.
    removeSourceHutOwnerTilde =
      owner:
      if builtins.match "^~.+" owner != null then
        lib.strings.substring 1 (-1) owner
      else
        owner;

    # Translate string, assuming plugin repo name, to Nix attr name.
    toAttrName =
      lib.strings.replaceStrings
        [
          "_"
          "."
        ]
        [
          "-"
          "-"
        ];
  };

  vim = rec {
    isVimPlugin = x: isAttrs x && (x.vimPlugin or false);

    filterVimPlugins = filterAttrs (_: v: (isVimPlugin v) && !(v.meta.broken or false));
  };

  systems = [
    "x86_64-linux"
    "x86_64-darwin"
    "aarch64-linux"
    "aarch64-darwin"
  ];
in

{
  inherit (attrsets)
    mapAttrs2
    mapAttrNames
    ;

  inherit (utils)
    hasMeaningfulRepo
    hasUniqueRepoIn
    isPluginData
    looksLikeTelescopeExtension
    removeSourceHutOwnerTilde
    toAttrName
    ;

  inherit (vim)
    isVimPlugin
    filterVimPlugins
    ;

  inherit systems;
}
