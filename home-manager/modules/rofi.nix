{ pkgs, ... }:

{
	programs.rofi = {
      enable = true;
      package = pkgs.rofi-wayland;
      
      theme = "gruvbox-dark";
      
      extraConfig = {
        modi = "drun,run";
        show-icons = false;
        kb-accept-entry = "Return";
        lines = 10; # count
        width = 50; # in percents
      };
    };
}
