final: _:

with final;

rec {
  checks = {
    format =
      runCommand "check-format"
        {
          src = ../.;
          nativeBuildInputs = [ nixfmt-rfc-style ];
        }
        ''
          set -e
          nixfmt --check --width=80 $src/*.nix $src/nix/
          touch $out
        '';

    lint =
      runCommand "check-lint"
        {
          src = ../.;
          nativeBuildInputs = [
            statix
            deadnix
          ];
        }
        ''
          set -e
          statix check $src/
          deadnix --fail --no-lambda-arg --no-lambda-pattern-names $src/
          touch $out
        '';
  };

  devShells = rec {
    default = mkShell {
      inputsFrom = [
        checks.format
        checks.lint
        ci-update
        ci-datasci
      ];
      packages = [
        fennel-ls
        luajit.pkgs.readline
      ];
    };

    ci-update = mkShell {
      packages = [
        nix
        jq.bin
        (luajit.withPackages (
          ps: with ps; [
            http
            cjson
            fennel
          ]
        ))
      ];
    };

    ci-datasci = mkShell {
      packages =
        [
          duckdb
          R
        ]
        ++ (with rPackages; [
          dplyr
          ggplot2
          lubridate
          readr
          tibble
          tidyr
        ]);
    };
  };
}
