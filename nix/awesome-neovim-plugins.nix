final: prev:

let
  inherit (prev) lib;
  inherit (import ./lib.nix { inherit lib; })
    hasMeaningfulRepo
    hasUniqueRepoIn
    isValidPlugin
    removeSourceHutOwnerTilde
    toAttrName
    ;

  hasUniqueRepo = hasUniqueRepoIn pluginsData;

  pnameOf =
    pluginData:
    let
      owner = removeSourceHutOwnerTilde pluginData.owner;
      inherit (pluginData) repo;
    in
    toAttrName (
      if hasUniqueRepo pluginData && hasMeaningfulRepo pluginData then
        repo
      else
        "${owner}-${repo}"
    );

  builder =
    pluginData:
    let
      inherit (pluginData)
        date
        rev
        sha256
        url
        ;
      pname = pnameOf pluginData;
    in
    {
      name = pname;
      value = final.vimUtils.buildVimPlugin {
        inherit pname;
        version = "${date}-${lib.strings.substring 0 7 rev}";
        src = final.fetchurl { inherit url sha256; };
        meta =
          lib.optionalAttrs (pluginData ? "description") {
            inherit (pluginData) description;
          }
          // lib.optionalAttrs (pluginData ? "homepage") {
            inherit (pluginData) homepage;
          }
          // lib.optionalAttrs (pluginData ? "license") {
            license =
              # trace: warning: getLicenseFromSpdxId: No license matches
              # the given SPDX ID: AGPL-3.0
              #
              # NOTE: cannot determine which is correct:
              #
              # if pluginData.license == "AGPL-3.0" then
              #   lib.licenses.agpl3Only? or agpl3Plus?
              # else
              lib.getLicenseFromSpdxId pluginData.license;
          };
      };
    };

  pluginsData = lib.filter isValidPlugin (
    lib.strings.fromJSON (lib.readFile ../data/plugins.json)
  );

  origin = builtins.listToAttrs (map builder pluginsData);
in
{
  awesomeNeovimPlugins = lib.makeExtensible (_: lib.recurseIntoAttrs origin);
}
