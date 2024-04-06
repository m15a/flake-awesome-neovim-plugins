final: prev:

let
  inherit (prev) lib;

  repoNameToPName = lib.strings.replaceStrings [ "." ] [ "-" ];

  builder =
    pluginInfo:
    let
      pname = repoNameToPName pluginInfo.repo;
      version = with pluginInfo; "${date}-${lib.strings.substring 0 7 rev}";
    in
    {
      name = pname;
      value = final.vimUtils.buildVimPlugin {
        inherit pname version;
        src = final.fetchurl { inherit (pluginInfo) url sha256; };
        meta =
          lib.optionalAttrs (builtins.hasAttr "description" pluginInfo) { inherit (pluginInfo) description; }
          // lib.optionalAttrs (builtins.hasAttr "homepage" pluginInfo) { inherit (pluginInfo) homepage; }
          //
            lib.optionalAttrs
              (
                builtins.hasAttr "license" pluginInfo
                # trace: warning: getLicenseFromSpdxId: No license matches
                # the given SPDX ID: NOASSERTION
                && pluginInfo.license != "NOASSERTION"
              )
              {
                license =
                  # trace: warning: getLicenseFromSpdxId: No license matches
                  # the given SPDX ID: AGPL-3.0
                  #
                  # NOTE: cannot determine which is correct:
                  #
                  # if pluginInfo.license == "AGPL-3.0" then
                  #   lib.licenses.agpl3Only? or agpl3Plus?
                  # else
                  lib.getLicenseFromSpdxId pluginInfo.license;
              };
      };
    };

  origin = builtins.listToAttrs (
    map builder (
      lib.filter (builtins.hasAttr "date") (
        lib.strings.fromJSON (lib.readFile ../data/plugins-info/extra.json)
      )
    )
  );
in
{
  vimExtraPlugins = lib.makeExtensible (_: lib.recurseIntoAttrs origin);
}
