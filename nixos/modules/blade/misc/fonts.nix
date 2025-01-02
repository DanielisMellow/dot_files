
{ config, pkgs, ... }:

{
fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    jetbrains-mono
    font-awesome
	terminus_font

    (nerdfonts.override { fonts = ["Hack" "JetBrainsMono"]; })
 	];

}
