{ config, pkgs, ... }:

{
  # Enable NVIDIA proprietary drivers
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware = {
    opengl = {
      enable = true;
      driSupport = true;
      driSupport32Bit = true;
      extraPackages = with pkgs; [ nvidia-vaapi-driver ];
    };

    # Optional: fix issues with NVIDIA/Wayland session launching
    nvidia = {
      modesetting.enable = true;
      powerManagement.enable = false;
      open = false; # set to true if you use open kernel module (experimental)
      nvidiaSettings = true;
    };
  };

  # Enable Hyprland (Wayland compositor)
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1"; # Hint apps to use Wayland
    __GLX_VENDOR_LIBRARY_NAME = "nvidia"; # Force NVIDIA GLX
    LIBVA_DRIVER_NAME = "nvidia";         # VA-API support
    WLR_NO_HARDWARE_CURSORS = "1";        # Prevent invisible cursor on NVIDIA
  };
}
