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

  hasUniqueRepo = hasUniqueRepoIn repos;

  pnameOf =
    plugin:
    let
      owner = removeSourceHutOwnerTilde plugin.owner;
      inherit (plugin) repo;
    in
    toAttrName (
      if hasUniqueRepo plugin && hasMeaningfulRepo plugin then repo else "${owner}-${repo}"
    );

  builder =
    plugin:
    let
      inherit (plugin)
        date
        rev
        sha256
        url
        ;
      pname = pnameOf plugin;
    in
    {
      name = pname;
      value = final.vimUtils.buildVimPlugin {
        inherit pname;
        version = "${date}-${lib.strings.substring 0 7 rev}";
        src = final.fetchurl { inherit url sha256; };
        meta =
          lib.optionalAttrs (plugin ? "description") {
            inherit (plugin) description;
          }
          // lib.optionalAttrs (plugin ? "homepage") {
            inherit (plugin) homepage;
          }
          // lib.optionalAttrs (plugin ? "license") {
            license =
              # trace: warning: getLicenseFromSpdxId: No license matches
              # the given SPDX ID: AGPL-3.0
              #
              # NOTE: cannot determine which is correct:
              #
              # if plugin.license == "AGPL-3.0" then
              #   lib.licenses.agpl3Only? or agpl3Plus?
              # else
              lib.getLicenseFromSpdxId plugin.license;
          };
      };
    };

  repos = lib.filter isValidPlugin (
    lib.strings.fromJSON (lib.readFile ../data/plugins.json)
  );

  origin = builtins.listToAttrs (map builder repos);
in
{
  awesomeNeovimPlugins = lib.makeExtensible (_: lib.recurseIntoAttrs origin);
}
