final: prev:

let
  inherit (final) lib;
  inherit (builtins)
    hasAttr
    mapAttrs
    ;
  inherit (lib)
    composeManyExtensions
    filterAttrs
    optionals
    ;
  utils = import ./utils.nix { inherit lib; };
  config = import ./config.nix { inherit lib; };

  filterConfig = filterAttrs (name: _: hasAttr name prev.awesomeNeovimPlugins);

  overrideBrokenPlugins =
    self: super:
    let
      f =
        pluginName: broken:
        super.${pluginName}.overrideAttrs (old: {
          meta = old.meta // {
            inherit broken;
          };
        });
    in
    mapAttrs f (filterConfig config.brokenPlugins);

  overrideHomepages =
    self: super:
    let
      f =
        pluginName: homepage:
        super.${pluginName}.overrideAttrs (old: {
          meta = old.meta // {
            inherit homepage;
          };
        });
    in
    mapAttrs f (filterConfig config.homepages);

  overrideLicenses =
    self: super:
    let
      f =
        pluginName: license:
        super.${pluginName}.overrideAttrs (old: {
          meta = old.meta // {
            inherit license;
          };
        });
    in
    mapAttrs f (filterConfig config.licenses);

  overridePlenaryConsumers =
    self: super:
    let
      f =
        pluginName: isConsumer:
        super.${pluginName}.overrideAttrs (old: {
          dependencies = (old.dependencies or [ ]) ++ optionals isConsumer [ self.plenary-nvim ];
        });
    in
    mapAttrs f (filterConfig config.plenaryConsumers);

  overrideLspConfigConsumers =
    self: super:
    let
      f =
        pluginName: isConsumer:
        super.${pluginName}.overrideAttrs (old: {
          dependencies = (old.dependencies or [ ]) ++ optionals isConsumer [ self.nvim-lspconfig ];
        });
    in
    mapAttrs f (filterConfig config.lspConfigConsumers);

  overrideTreesitterConsumers =
    self: super:
    let
      f =
        pluginName: isConsumer:
        super.${pluginName}.overrideAttrs (old: {
          dependencies = (old.dependencies or [ ]) ++ optionals isConsumer [ self.nvim-treesitter ];
        });
    in
    mapAttrs f (filterConfig config.treesitterConsumers);

  # Add Telescope extension dependencies.
  overrideTelescopeExtensions =
    self: super:
    let
      f =
        pluginName: pkg:
        if utils.looksLikeTelescopeExtension pluginName then
          pkg.overrideAttrs (old: {
            dependencies = (old.dependencies or [ ]) ++ [ self.telescope-nvim ];
          })
        else
          pkg;
    in
    mapAttrs f super;

  overrideTelescopeConsumers =
    self: super:
    let
      f =
        pluginName: isConsumer:
        super.${pluginName}.overrideAttrs (old: {
          dependencies = (old.dependencies or [ ]) ++ optionals isConsumer [ self.telescope-nvim ];
        });
    in
    mapAttrs f (filterConfig config.telescopeConsumers);

  overrideDependencies =
    self: super:
    let
      f =
        pluginName: dependencies:
        super.${pluginName}.overrideAttrs (old: {
          dependencies = (old.dependencies or [ ]) ++ dependencies;
        });
    in
    mapAttrs f (
      filterConfig (
        config.dependencies {
          inherit self super;
          pkgs = final;
        }
      )
    );

  overrideMoreOverrides =
    self: super:
    (filterConfig (
      config.moreOverrides {
        inherit self super;
        pkgs = final;
      }
    ));
in
{
  awesomeNeovimPlugins = prev.awesomeNeovimPlugins.extend (composeManyExtensions [
    overrideBrokenPlugins
    overrideHomepages
    overrideLicenses
    overridePlenaryConsumers
    overrideLspConfigConsumers
    overrideTreesitterConsumers
    overrideTelescopeExtensions
    overrideTelescopeConsumers
    overrideDependencies
    overrideMoreOverrides
  ]);
}
