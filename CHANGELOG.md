# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog][1], and this project adheres
to [Semantic Versioning][2], except that changes in the patch version
number is not noted here since it will be used for rolling release.
See [FlakeHub document][3] for more details.

[1]: https://keepachangelog.com/en/1.1.0/
[2]: https://semver.org/spec/v2.0.0.html
[3]: https://flakehub.com/docs/publishing

## [Unreleased]

### Changed

- If owner/repo names manifested in Awesome Neovim README (A) are
  different from those in their repositories (B), previously A was used.
  Now B takes precedence.

### Fixed

- GitLab namespace parsing [#138]

[#138]: https://github.com/m15a/flake-awesome-neovim-plugins/issues/138

## [0.2.0] - 2024-11-07

### Added

- nvim-treesitter: Support for passthru attributes `withPlugins`,
  `withAllGrammars`, etc. [#112]
- Support auto-update of extra dependencies such as `cargoSha256`
  of Rust binary [#127]: `sniprun` as a first example.

### Fixed

- sniprun: Use `cargoHash` instead of deprecated `cargoSha256` [#136]
- `date` field not changed when updating plugin [#135]
- Attribute names of plugins having the same repository name [#110]:
  For example, `a/some.nvim` and `b/some.nvim` get attribute
  names `a-some-nvim` and `b-some-nvim`, respectively. Note that if a
  plugin has unique repository name, its attribute name will not be
  prefixed.
- Dependencies of telescope.nvim and its extensions [#108]
- Dependencies of LSP-related plugins [#115]
- Dependencies of Treesitter-related plugins [#114]

[#108]: https://github.com/m15a/flake-awesome-neovim-plugins/issues/108
[#110]: https://github.com/m15a/flake-awesome-neovim-plugins/issues/110
[#112]: https://github.com/m15a/flake-awesome-neovim-plugins/issues/112
[#114]: https://github.com/m15a/flake-awesome-neovim-plugins/issues/114
[#115]: https://github.com/m15a/flake-awesome-neovim-plugins/issues/115
[#127]: https://github.com/m15a/flake-awesome-neovim-plugins/issues/127
[#135]: https://github.com/m15a/flake-awesome-neovim-plugins/pull/135
[#136]: https://github.com/m15a/flake-awesome-neovim-plugins/issues/136

## [0.1.0] - 2024-04-10

### Changed

- **Refactor all the stuff**:
  It now focuses on [Awesome Neovim] and provides only all the plugins
  manifested there.

[Awesome Neovim]: https://github.com/rockerBOO/awesome-neovim

### Added

- Support for [Codeberg] repositories
- Support for [sourcehut] repositories

[Codeberg]: https://codeberg.org/
[sourcehut]: https://sr.ht/

[Unreleased]: https://github.com/m15a/flake-awesome-neovim-plugins/compare/v0.2.0...HEAD
[0.2.0]: https://github.com/m15a/flake-awesome-neovim-plugins/compare/v0.1.0...v0.2.0
[0.1.0]: https://github.com/m15a/flake-awesome-neovim-plugins/releases/tag/v0.1.0

<!-- vim:set tw=72 spell nowrap: -->
