{ config, pkgs, lib, ... }:

{
	imports = [
		./modules
	];

	# Including all scripts
	home.file = {
		".local/bin" = {
			source = ./scripts;
			recursive = true;
		};
	};

	home.username = "alex";
	home.homeDirectory = "/home/alex";

	home.packages = [];

	home.sessionVariables = {

	};

	programs.home-manager.enable = true;


	# This value determines the Home Manager release that your configuration is
	# compatible with. This helps avoid breakage when a new Home Manager release
	# introduces backwards incompatible changes.
	#
	# You should not change this value, even if you update Home Manager. If you do
	# want to update the value, then make sure to first check the Home Manager
	# release notes.
	home.stateVersion = "25.05"; # Please read the comment before changing.
}
