

{ config, pkgs, ... }:

{
  # Window Manager
  programs.hyprland = {
   enable = true;
   xwayland.enable = true;
  };
  environment.sessionVariables = {
   # If your cursor becomes invisiable
   WLR_NO_HARDWARE_CURSORS = "1";
   # Hint electro apps to use wayland
   NIXOS_OZONE_WL = "1";
  };

  hardware = {
    # Opengl
    graphics.enable = true;
  };
}
