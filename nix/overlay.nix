final: prev:

let
  inherit (prev) lib;
in
lib.composeManyExtensions [
  (import ./awesome-neovim-plugins.nix)
  (import ./overrides.nix)
] final prev
