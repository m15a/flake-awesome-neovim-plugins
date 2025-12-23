{ lib }:

rec {
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

  # Remove sourcehut owner name's prefix `~` if any.
  removeSourceHutOwnerTilde =
    owner:
    if builtins.match "^~.+" owner != null then
      lib.strings.substring 1 (-1) owner
    else
      owner;

  # Check if the given attrset has mandatory plugin attrs.
  isValidPlugin =
    repo:
    repo ? "date"
    && repo ? "owner"
    && repo ? "repo"
    && repo ? "rev"
    && repo ? "sha256"
    && repo ? "url";

  # If pname has prefix `telescope-`, it should be a telescope extension.
  looksLikeTelescopeExtension =
    pname: pname != "telescope-nvim" && builtins.match "(^|.+-)telescope-.+" pname != null;

  # Some plugins of different owners have an identical repo name.
  hasUniqueRepoIn =
    repos: repo:
    let
      n = lib.lists.length (lib.filter (p: toAttrName p.repo == toAttrName repo.repo) repos);
    in
    if n == 0 then throw "unseen plugin" else n == 1;

  # Some plugins need their owner name to make meaningful pname;
  # e.g., catppuccin/nvim.
  hasMeaningfulRepo =
    repo: with repo; repo != "vim" && repo != "nvim" && repo != "neovim";
}
