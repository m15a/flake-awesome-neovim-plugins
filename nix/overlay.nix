final: prev:

prev.lib.composeManyExtensions [
  (import ./awesome-neovim-plugins.nix)
  (import ./overrides.nix)
] final prev
