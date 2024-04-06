final: prev:

{
  ci-update = final.mkShell {
    packages = [
      final.jq
      final.nix-prefetch-git
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
