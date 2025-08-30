{ config, pkgs, lib, ... }:

{
	services.picom = {
		enable = true;
		backend = "glx";
		vSync = true;
		shadow = true;
		fade = true;
		inactiveOpacity = 0.9;
	};

	xdg.configFile."bspwm/bspwmrc".source = ./bspwmrc;
	xdg.configFile."sxhkd/sxhkdrc".source = ./sxhkdrc;
}
