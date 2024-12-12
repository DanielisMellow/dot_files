{ config, pkgs, ... }:

{

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.lizardking = {
    isNormalUser = true;
    description = "Daniel";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    #  thunderbird
    ];
  };


  # Enable the OpenSSH daemon.
  services.openssh.enable = true;


 packages = [inputs.home-manager.packages.${pkgs.system}.default];
  };
  home-manager.users.lizardking =
    import ../../../home/lizardking/${config.networking.hostName}.nix;
};
