{ pkgs, pkgs-unstable, inputs, ... }:

{
	nixpkgs.config.allowUnfree = true;

	environment.systemPackages = with pkgs-unstable; [
		waybar
	] ++ (with pkgs; [
		# --- Wayland / DE ---
		pkgs.hyprland
		pkgs.rofi-wayland
		pkgs.wofi

		# --- основные тулзы ---
		pkgs.git
		pkgs.wget
		pkgs.curl
		pkgs.unzip
		pkgs.htop
		pkgs.neovim
		pkgs.fastfetch
		pkgs.ranger
		pkgs.pavucontrol
		pkgs.nwg-look

		# --- разработка: языки и тулчейн ---
		pkgs.python3
		pkgs.python3Packages.pip
		pkgs.python3Packages.virtualenv
		pkgs.docker

		# --- IDE / редакторы ---
		pkgs.vscode
		pkgs.obsidian

		# --- соц. и утилиты ---
		pkgs.telegram-desktop
		pkgs.firefox

		# --- системное удобство ---
		# pkgs.alacritty
		pkgs.fish
		pkgs.tree

		# --- Text editors ---
		pkgs.vim
		pkgs.micro

		# --- Network ---
		pkgs.nekoray

		# --- Sound ---
		pkgs.pipewire

		# --- Utils ---
		pkgs.wl-clipboard
		pkgs.cliphist
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
