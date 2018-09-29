let pkgs = import <nixpkgs> {};

in pkgs.mkShell {
     buildInputs = [
       pkgs.haskellPackages.cabal-install
       pkgs.haskell.compiler.ghc861
     ];
}
