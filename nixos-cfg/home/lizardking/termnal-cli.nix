
{ config, lib, pkgs, ... }:

{

  home.packages = with pkgs [
  cmatrix
  btop
  cowsay
  neofetch
  ];
};
