final: prev:

let
  inherit (final) lib;

  # Mark broken packages here.
  overrideBroken = self: super:
    lib.mapAttrs (attrName: broken:
      super.${attrName}.overrideAttrs
      (old: { meta = old.meta // { inherit broken; }; })) {
        # Build failed with `E154: Duplicate tag`
        apc-nvim = true;
        panvimdoc = true;
        pckr-nvim = true;
        unruly-worker = true;
      };

  # Add licenses if missing or incorrect in ./data/plugins-info/extra.json.
  overrideLicense = self: super:
    lib.mapAttrs (attrName: license:
      super.${attrName}.overrideAttrs
      (old: { meta = old.meta // { inherit license; }; }))
    (with lib.licenses; { });

  # Add dependencies if needed.
  overrideDependencies = self: super:
    lib.mapAttrs (attrName: dependencies:
      super.${attrName}.overrideAttrs (_: { inherit dependencies; }))
    (with final.vimPlugins; { });

  # Add other overrides here.
  overrideOthers = self: super: { };

in {
  vimExtraPlugins = prev.vimExtraPlugins.extend (lib.composeManyExtensions [
    overrideBroken
    overrideLicense
    overrideDependencies
    overrideOthers
  ]);
}
