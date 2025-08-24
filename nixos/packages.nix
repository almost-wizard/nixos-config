{ pkgs, ... }:

{
	nixpkgs.config.allowUnfree = true;

	environment.systemPackages = with pkgs; [
		rofi-wayland

		# --- основные тулзы ---
		git
		wget
		curl
		unzip
		htop
		neovim
		fastfetch
		ranger

		# --- разработка: языки и тулчейн ---
		python3
		python3Packages.pip
		python3Packages.virtualenv
		docker

		# --- IDE / редакторы ---
		vscode
		obsidian

		# --- соц. и утилиты ---
		discord
		telegram-desktop
		firefox

		# --- системное удобство ---
		#alacritty
		fish
		tree
		
		# Text editors
		vim
		micro

		# Network
		nekoray
		
		# Sound
		pipewire

		# Utils
		wl-clipboard
		cliphist
	];

	fonts.packages = with pkgs; [
		jetbrains-mono
		noto-fonts
		noto-fonts-emoji
		twemoji-color-font
		font-awesome
		powerline-fonts
		powerline-symbols
		nerd-fonts.symbols-only
	];
}
