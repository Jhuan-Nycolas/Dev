{ pkgs ? import <nixpkgs> {} }:

pkgs.buildFHSUserEnv {
  name = "flutter";
  targetPkgs = pkgs: with pkgs; [
    flutter
    android-tools
    coreutils
    jdk
    fish
    kotlin
    gradle
  ];
  runScript = "/bin/fish";
}
