final: _:

with final;

{
  devShells = rec {
    default = mkShell {
      inputsFrom = [
        ci-update
        ci-datasci
        ci-check-format
      ];
      packages = [
        fennel-ls
        luajit.pkgs.readline
      ];
    };

    ci-check-format = mkShell {
      packages = [
        statix
        deadnix
        nixfmt-rfc-style
        pre-commit
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
