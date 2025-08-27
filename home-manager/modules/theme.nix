{ config, pkgs, ... }:
{
	gtk = {
		enable = true;
		theme = {
			name = "Nordic";
			package = pkgs.nordic;
		};
		iconTheme = {
			name = "Papirus-Dark"; 
			package = pkgs.papirus-icon-theme;
		};

		# Cursor sets in hyprland config at `exec-once` block
		cursorTheme = {
			name = "Bibata-Modern-Ice";
			package = pkgs.bibata-cursors;
		};
	};

	# Qt will repeat GTK theme
	qt = {
		enable = true;
		platformTheme.name = "gtk";
	};
}
