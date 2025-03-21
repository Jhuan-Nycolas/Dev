{
  description = "DevShells";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs = {nixpkgs, ...}: let
    system = "x86_64-linux";

    pkgs = import nixpkgs { inherit system; };
  in {
    devShells.${system} = {
      spacedev = pkgs.mkShell {
        packages = [
          pkgs.flutter
        ];
   
        shellHook = "clear; exec fish";
      };
    };
  };
}
