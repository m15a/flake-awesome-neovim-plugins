{
  description = "A Nix flake providing the Awesome Neovim plugins";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  outputs = args: import ./nix args;
}
