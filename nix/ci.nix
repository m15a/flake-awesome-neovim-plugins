final: prev:

{
  ci-check-format = final.mkShell {
    packages = [
      final.statix
      final.deadnix
      final.nixfmt-rfc-style
      final.pre-commit
    ];
  };

  ci-update = final.mkShell {
    packages = [
      final.nix
      final.jq.bin
      (final.luajit.withPackages (
        ps: with ps; [
          http
          cjson
          fennel
        ]
      ))
    ];
  };
}
