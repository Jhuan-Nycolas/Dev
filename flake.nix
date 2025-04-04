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
      flutter = pkgs.mkShell {
        packages = [
          pkgs.flutter
        ];
   
        shellHook = "clear; ${pkgs.figlet}/bin/figlet Flutter DevShell Activated; exec fish";
      };

      yarn = pkgs.mkShell {
        packages = [
          pkgs.yarn
        ];
   
        shellHook = "clear; ${pkgs.figlet}/bin/figlet Yarn DevShell Activated; exec fish";
      };

      cpp = pkgs.mkShell {
        packages = [
          pkgs.gcc
        ];

        shellHook = "clear; ${pkgs.figlet}/bin/figlet Cpp DevShell Activated; exec fish";
      };

      rust = pkgs.mkShell {
        packages = [
          pkgs.rustc
          pkgs.cargo
        ];

        shellHook = "clear; ${pkgs.figlet}/bin/figlet Rust DevShell Activated; exec fish";
      };
    };
  };
}
