final: prev:

{
  ci-update = final.mkShell {
    packages = [
      final.nix
      final.jq
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
