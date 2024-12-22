final: prev:

with final;

rec {
  devShells = rec {
    default = mkShell {
      inputsFrom = [
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
          patches = old.patches ++ [
            (final.fetchpatch {
              name = "msteen-nix-prefetch-pull-34.patch";
              url = "https://github.com/msteen/nix-prefetch/pull/34/commits/c5744efd558ba1dd3db7c2bc2152511556d4454a.patch";
              hash = "sha256-4mpMmF5jb5R2qmTjtw3mXnIYMkPmPQAtWSzGgSH+5R0=";
            })
          ];
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
