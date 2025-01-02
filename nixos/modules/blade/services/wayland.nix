
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
      # Wayland stuff
      xwayland
      wl-clipboard
      cliphist
  ];
}
