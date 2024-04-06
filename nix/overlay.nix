final: prev:

let
  inherit (prev) lib;
in
lib.composeManyExtensions [
  (import ./vim-extra-plugins.nix)
  (import ./overrides.nix)
] final prev
