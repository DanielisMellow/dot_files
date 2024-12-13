# Add your reusable home-manager modules to this directory, on their own file (https://nixos.wiki/wiki/Module).
# These should be stuff you would like to share with others, not your personal configurations.
{
  imports = [
  ./apps/neovim.nix
  ./apps/terminal-cli.nix
  ./apps/terminals.nix
  ./misc/fonts.nix
  ./services/wayland.nix
  
  ./wm/hyprland.nix
  ./wm/hyprland-addons.nix
  .
  ];
}
