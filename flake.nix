{
  description = "Modo Dev";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
  };

  outputs = { self, nixpkgs }:
  let
    sys = "x86_64-linux";
  in 
  {
    devShells = {
      x86_64-linux = {
        Maven = {
          (import nixpkgs {
            system = {sys};
          }).mkShell {
            buildInputs = [
              nixpkgs.jdk
              nixpkgs.maven
            ];
        };

        Nodejs = {
          (import nixpkgs {
            system = {sys}
          }).mkShell {
            buildInputs = [
              nixpkgs.yarn
            ];
          };
        };
      };
    };
  };
}

