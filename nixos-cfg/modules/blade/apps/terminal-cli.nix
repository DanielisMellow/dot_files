{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
  neofetch
  cowsay
  cmatrix
  btop

  # tools
  git
  tree
  fzf
  ripgrep
  unzip
  curl
  ffmpeg
  ];
}
