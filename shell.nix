with import <nixpkgs> {};

let
  myPython = python36.withPackages(p: [p.click p.graphviz p.trezor p.ed25519 p.pillow]) ;
in
  stdenv.mkDerivation {
    name = "trezor-common-dev";
    buildInputs = [ myPython python27Packages.demjson graphviz ];
  }
