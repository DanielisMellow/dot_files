

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim
    vimPlugins.telescope-fzf-native-nvim
    gcc
    gnumake
    pkg-config
    lua
    luarocks
  ];
  environment.variables = {
    EDITOR = "nvim";
  };
}
