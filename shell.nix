{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  nativeBuildInputs = with pkgs; ([ hugo nodejs ] ++ (with nodePackages; [ yarn ]));
}
