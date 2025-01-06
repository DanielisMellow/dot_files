
{ ... }:
{
  wayland.windowManager.hyprland = {
    extraConfig = "
      monitor=,preferred,auto,auto
      monitor=,highrr,auto,1

      monitor=,highres,auto,1


      xwayland {
        force_zero_scaling = true
      }
    ";
};
