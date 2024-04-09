final: prev:

let
  inherit (final) lib;

  # Mark broken packages here.
  overrideBroken =
    self: super:
    lib.mapAttrs
      (
        attrName: broken:
        super.${attrName}.overrideAttrs (old: {
          meta = old.meta // {
            inherit broken;
          };
        })
      )
      {
        # Build failed with `E154: Duplicate tag`
        apc-nvim = true;
        panvimdoc = true;
        pckr-nvim = true;
        unruly-worker = true;
      };

  # Add licenses if missing or incorrect in ./data/plugins-info/awesome-neovim.json.
  overrideLicense =
    self: super:
    lib.mapAttrs
      (
        attrName: license:
        super.${attrName}.overrideAttrs (old: {
          meta = old.meta // {
            inherit license;
          };
        })
      )
      (
        with lib.licenses;
        {
          # Example:
          #
          # visual-nvim = gpl3Only;
        }
      );

  # Add dependencies if needed.
  overrideDependencies =
    self: super:
    lib.mapAttrs
      (
        attrName: dependencies:
        super.${attrName}.overrideAttrs (_: {
          inherit dependencies;
        })
      )
      (
        with self;
        {
          # Example:
          #
          # octo-nvim = [ plenary-nvim telescope-nvim ];
        }
      );

  # Add other overrides here.
  overrideOthers = self: super: {
    # Example:
    #
    # markdown-preview-nvim = super.markdown-preview-nvim.overrideAttrs (_: {
    #   nativeBuildInputs = [ final.nodejs ];
    # });
  };
in
{
  awesomeNeovimPlugins = prev.awesomeNeovimPlugins.extend (
    lib.composeManyExtensions [
      overrideBroken
      overrideLicense
      overrideDependencies
      overrideOthers
    ]
  );
}
