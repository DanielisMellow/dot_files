{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
        neofetch
        fastfetch
        cowsay
        cmatrix
        btop
        tmux

        # tools
        git
        tree
        fzf
        lazygit
        fd
        ripgrep
        unzip
        curl
        ffmpeg
        jq
        yad
  ];
}
