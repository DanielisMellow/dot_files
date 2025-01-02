{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
  neofetch
  fastfetch
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
  jq
  yad
  ];
}
