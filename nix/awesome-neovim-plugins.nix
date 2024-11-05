final: prev:

let
  inherit (prev) lib;
  utils = prev.callPackage ./utils.nix { };

  builder =
    pluginInfo:
    let
      inherit (pluginInfo)
        date
        repo
        rev
        sha256
        url
        ;

      owner = utils.fixSourceHutOwner pluginInfo.owner;

      isGoodRepoName =
        repo:
        utils.isUniqueRepoNameIn pluginsInfo repo && utils.isMeaningfulRepoName repo;

      pname = utils.repoNameToPluginName (
        if isGoodRepoName repo then repo else "${owner}-${repo}"
      );
    in
    {
      name = pname;
      value = final.vimUtils.buildVimPlugin {
        inherit pname;
        version = "${date}-${lib.strings.substring 0 7 rev}";
        src = final.fetchurl { inherit url sha256; };
        passthru = lib.optionalAttrs (pluginInfo ? "cargoSha256") {
          rust = {
            inherit (pluginInfo) cargoSha256;
          };
        };
        meta =
          lib.optionalAttrs (pluginInfo ? "description") {
            inherit (pluginInfo) description;
          }
          // lib.optionalAttrs (pluginInfo ? "homepage") {
            inherit (pluginInfo) homepage;
          }
          // lib.optionalAttrs (pluginInfo ? "license") {
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

  pluginsInfo = lib.strings.fromJSON (
    lib.readFile ../data/plugins/awesome-neovim.json
  );

  origin = builtins.listToAttrs (
    map builder (lib.filter utils.isValidPluginInfo pluginsInfo)
  );
in
{
  awesomeNeovimPlugins = lib.makeExtensible (_: lib.recurseIntoAttrs origin);
}
