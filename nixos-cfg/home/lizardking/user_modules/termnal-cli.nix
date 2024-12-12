# Terminal packages available to this user
{ config, lib, pkgs, ... }:
{

  home.packages = with pkgs [
  cmatrix
  btop
  cowsay
  neofetch
  ];
};
