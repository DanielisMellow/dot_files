

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim
    vimPlugins.telescope-fzf-native-nvim
  ];
  environment.variables = {
    EDITOR = "nvim";
  };
}
