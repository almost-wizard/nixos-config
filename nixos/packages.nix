{ pkgs, pkgs-unstable, inputs, ... }:

{
	nixpkgs.config.allowUnfree = true;

	environment.systemPackages = with pkgs-unstable; [
		waybar
	] ++ (with pkgs; [
		hyprland
		rofi-wayland
		wofi

		krita

		git
		wget
		curl
		unzip
		htop
		neovim
		fastfetch
		ranger
		pavucontrol
		nwg-look

		python3
		python3Packages.pip
		python3Packages.virtualenv
		docker

		vscode
		obsidian

		telegram-desktop
		firefox

		alacritty
		fish
		tree

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
