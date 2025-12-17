# flake-awesome-neovim-plugins

This repository provides Nix packages for Neovim plugins listed in the
[Awesome Neovim] collection.

[![check_badge]][check_status]
[![Awesome Neovim plugins][nplugins]][Awesome Neovim]

[Awesome Neovim]: https://github.com/rockerBOO/awesome-neovim
[check_badge]: https://img.shields.io/github/actions/workflow/status/m15a/flake-awesome-neovim-plugins/check.yml?style=flat-square&logo=github&label=Check
[check_status]: https://github.com/m15a/flake-awesome-neovim-plugins/actions/workflows/check.yml
[NPLUGINS]: https://img.shields.io/badge/Awesome_Neovim_plugins-1103-57A143?style=flat-square

The packages are automatically updated daily by parsing the `README.md`
of the [Awesome Neovim] repository and extracting all the plugins listed
there.

Since these packages are automatically generated, some of them might be
broken due to missing dependencies, build inputs, or the need of
specific overrides. Please use these packages with caution.

## Usage

The overlay in this flake adds the Awesome Neovim plugins under the
`awesomeNeovimPlugins` attribute. You can use it as you normally would.
For example:

```nix
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-awesome-neovim-plugins.url = "github:m15a/flake-awesome-neovim-plugins";
  };
  outputs =
    { nixpkgs, flake-awesome-neovim-plugins, ... }:
    let
      system = "aarch64-darwin";
      pkgs = import nixpkgs {
        inherit system;
        overlays = [ flake-awesome-neovim-plugins.overlays.default ];
      };
    in
    {
      packages.${system}.default = pkgs.neovim.override {
        configure = {
          packages.example = with pkgs.awesomeNeovimPlugins; {
            start = [
              your-favorite-awesome-neovim-plugin
            ];
          };
        };
      };
    };
}
```

## Contributing

### Add or remove a plugin

To add a new plugin to this flake, simply submit a pull request to
the upstream [Awesome Neovim] repository to register your favorite
plugin in their `README.md`. Once merged, the change will be reflected
here after the next daily updating workflow run.

Similarly, to remove a plugin, submit a pull request to [Awesome Neovim]
to remove it from their `README.md`.

### Fix a broken plugin build

If a plugin build is broken, please submit a pull request to this
repository with your fix applied in [`./nix/*.nix`](nix/).

## Licenses

Unless explicitly stated otherwise, this software is licensed under
the [BSD 3-clause license](LICENSE).

A portion of [`./nix/overrides.nix`](nix/overrides.nix) is modification
of original Nixpkgs' code, which is licensed under the MIT license.
The specific license terms can be found in the comments within that
file.

The data in
[`./data/awesome-neovim-plugins.json`](data/awesome-neovim-plugins.json)
is collected from various code hosting services using their respective
APIs. Each piece of data retains its original copyright and usage
permission. For details on permissive data use and content rights,
please refer to the terms of use for each service:

- [GitHub](https://docs.github.com/en/site-policy/github-terms/github-terms-of-service)
- [GitLab](https://handbook.gitlab.com/handbook/legal/api-terms/)
- [sourcehut](https://man.sr.ht/terms.md)
- [Codeberg](https://codeberg.org/codeberg/org/src/branch/main/TermsOfUse.md)

<!-- vim:set tw=72 spell nowrap: -->
