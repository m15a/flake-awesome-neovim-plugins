{ nixpkgs, ... }:
let
  inherit (nixpkgs.lib)
    genAttrs
    mapAttrs
    ;
  inherit (import ./lib.nix { inherit (nixpkgs) lib; })
    mapAttrNames
    filterVimPlugins
    systems
    ;

  forSystems =
    f:
    genAttrs systems (
      system:
      f (
        import nixpkgs {
          inherit system;
          overlays = [ overlay ];
        }
      )
    );

  overlay = import ./overlay.nix;
in
rec {
  overlays.default = overlay;

  packages = forSystems (pkgs: filterVimPlugins pkgs.awesomeNeovimPlugins);

  checks = mapAttrs (_: ps: mapAttrNames (n: "check-${n}") ps) packages;

  formatter = forSystems (
    pkgs:
    pkgs.writeShellApplication {
      name = "flake-awesome-neovim-plugins-formatter";
      runtimeInputs = [ pkgs.nixfmt ];
      text = ''
        mapfile -t files < <(git ls-files --exclude-standard)
        for file in "''${files[@]}"; do
            case "''${file##*.}" in
                nix)
                    nixfmt -w88 "$file" &
                    ;;
            esac
        done
      '';
    }
  );
}
