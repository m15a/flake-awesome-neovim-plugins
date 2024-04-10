{ lib }:

rec {
  repoNameToPName =
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
    x:
    let
      contents = lib.attrsets.mapAttrsToList (k: v: "${k}: ${toString v}") x;
    in
    "{" + lib.concatStringsSep ", " contents + "}";

  isValidPluginInfo =
    x:
    if
      x ? "date"
      && x ? "owner"
      && x ? "repo"
      && x ? "rev"
      && x ? "sha256"
      && x ? "url"
    then
      true
    else
      let
        msg = "invalid plugin info: " + showPluginInfo x;
      in
      lib.warn msg false;
}
