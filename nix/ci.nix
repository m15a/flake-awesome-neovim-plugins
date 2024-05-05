final: prev:

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
        (prev.nix-prefetch.overrideAttrs (old: {
          postPatch = ''
            lib=$out/lib/${old.pname}
            substituteInPlace src/main.sh \
              --subst-var-by lib $lib \
              --subst-var-by version $version
            substituteInPlace src/tests.sh \
              --subst-var-by bin $out/bin
          '';
          nativeBuildInputs = [ makeWrapper ];
          buildPhase = "";
          installPhase = ''
            install -Dm555 -t $lib src/*.sh
            install -Dm444 -t $lib lib/*
            makeWrapper $lib/main.sh $out/bin/${old.pname} \
              --prefix PATH : ${
                lib.makeBinPath [
                  coreutils
                  gawk
                  git
                  gnugrep
                  gnused
                  jq.bin
                ]
              }
          '';
        }))
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
