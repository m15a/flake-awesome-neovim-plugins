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
          vitesse-nvim = mit;
          nvim-cartographer = gpl3Plus;
          nvim-highlite = gpl3Plus;
          scratch-nvim = gpl3Plus;
          nvim-colorizer-lua = gpl3Plus;
          nvim-remote-containers = {
            fullName = "modified MIT License";
            free = false;
            redistributable = false;
          };
          nvim-tree-lua = gpl3Plus;
          oceanic-next = asl20;
          nvim-base16-lua = mit;
          arrow-nvim = gpl3Plus;
          telescope-alternate-nvim = gpl3Plus;
          mind-nvim = bsd3;
          quarto-nvim = gpl2Plus;
          bamboo-nvim = mit;
          pounce-nvim = asl20;
          killersheep-nvim = vim;
          diffview-nvim = gpl3Plus;
          hop-nvim = bsd3;
          yawnc-nvim = {
            fullName = "Do whatever, just give credits where credits are do.";
            free = true;
            redistributable = true;
          };
          neosolarized-nvim = mit;
          nvim-deus = gpl3Plus;
        }
        // (
          let
            fossil = {
              fullName = "FOSSIL | Fair Open-Source Software International License v1.0.2";
              free = true;
              redistributable = true;
            };
          in
          {
            duplicate-nvim = fossil;
            lsp-timeout-nvim = fossil;
          }
        )
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
