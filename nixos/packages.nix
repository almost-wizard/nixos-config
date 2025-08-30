{ pkgs, pkgs-unstable, inputs, ... }:

{
	nixpkgs.config.allowUnfree = true;

	environment.systemPackages = with pkgs-unstable; [
		waybar
	] ++ (with pkgs; [
		alacritty
		bspwm
		sxhkd
		picom
		polybar
		feh
		rofi
		flameshot
		xorg.xrandr
		xorg.xsetroot
	
		hyprland
		rofi-wayland
		wofi
		nwg-look

		git
		wget
		curl
		tree
		unzip
		htop
		neovim
		fastfetch
		ranger
		pavucontrol

		python3
		python3Packages.pip
		python3Packages.virtualenv
		docker

		vscode
		obsidian

		telegram-desktop
		firefox

		vim
		micro

		nekoray

		pipewire

		wl-clipboard
		cliphist
	]);


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
