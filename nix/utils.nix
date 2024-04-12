{ lib }:

rec {
  repoNameToPluginName =
    lib.strings.replaceStrings
      [
        "_"
        "."
      ]
      [
        "-"
        "-"
      ];

  showPluginInfo =
    pluginInfo:
    let
      contents = lib.attrsets.mapAttrsToList (k: v: "${k}: ${toString v}") pluginInfo;
    in
    "{" + lib.concatStringsSep ", " contents + "}";

  isValidPluginInfo =
    pluginInfo:
    if
      pluginInfo ? "date"
      && pluginInfo ? "owner"
      && pluginInfo ? "repo"
      && pluginInfo ? "rev"
      && pluginInfo ? "sha256"
      && pluginInfo ? "url"
    then
      true
    else
      let
        msg = "invalid plugin info: " + showPluginInfo pluginInfo;
      in
      lib.warn msg false;
}
