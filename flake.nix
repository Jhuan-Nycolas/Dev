{
  description = "DevShells";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs = {nixpkgs, ...}: let
    system = "x86_64-linux";

    pkgs = import nixpkgs {inherit system;};
  in {
    devShells.${system} = {
      yarn = pkgs.mkShell {
        packages = [
          pkgs.yarn
        ];

        shellHook = "clear";
      };

      cpp = pkgs.mkShell {
        packages = [
          pkgs.gcc
        ];

        shellHook = "clear";
      };

      python = pkgs.mkShell {
        packages = [
          pkgs.python313
        ];

        shellHook = "clear";
      };
    };
  };
}
