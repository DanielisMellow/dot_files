# Add your reusable home-manager modules to this directory, on their own file (https://nixos.wiki/wiki/Module).
# These should be stuff you would like to share with others, not your personal configurations.
{
  # List your module files here
  # my-module = import ./my-module.nix;
  imports = [
  ./lang/cc.nix
  ./lang/python.nix
  ./hyprland/default.nix
  ./scripts/scripts.nix
  ./swaync/swaync.nix
  ./waybar/default.nix
  ];
}
