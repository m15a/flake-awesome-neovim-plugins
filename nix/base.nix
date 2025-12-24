final: prev:

let
  inherit (builtins)
    filter
    fromJSON
    listToAttrs
    readFile
    substring
    ;
  inherit (prev.lib)
    getLicenseFromSpdxId
    makeExtensible
    optionalAttrs
    recurseIntoAttrs
    ;
  inherit (import ./lib.nix { inherit (prev) lib; })
    hasMeaningfulRepo
    hasUniqueRepoIn
    isPluginData
    removeSourceHutOwnerTilde
    repoToAttrName
    ;

  hasUniqueRepo = hasUniqueRepoIn pluginsData;

  pnameOf =
    pluginData:
    let
      owner = removeSourceHutOwnerTilde pluginData.owner;
      inherit (pluginData) repo;
    in
    repoToAttrName (
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
        version = "${date}-${substring 0 7 rev}";
        src = final.fetchurl { inherit url sha256; };
        meta =
          optionalAttrs (pluginData ? "description") {
            inherit (pluginData) description;
          }
          // optionalAttrs (pluginData ? "homepage") {
            inherit (pluginData) homepage;
          }
          // optionalAttrs (pluginData ? "license") {
            license =
              # trace: warning: getLicenseFromSpdxId: No license matches
              # the given SPDX ID: AGPL-3.0
              #
              # NOTE: cannot determine which is correct:
              #
              # if pluginData.license == "AGPL-3.0" then
              #   lib.licenses.agpl3Only? or agpl3Plus?
              # else
              getLicenseFromSpdxId pluginData.license;
          };
      };
    };

  pluginsData = filter isPluginData (fromJSON (readFile ../data/plugins.json));

  plugins = listToAttrs (map builder pluginsData);
in
{
  awesomeNeovimPlugins = makeExtensible (_: recurseIntoAttrs plugins);
}
