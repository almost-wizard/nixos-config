{ config, pkgs, pkgs-unstable, ... }:

{
	programs.waybar = {
		enable = true;
		package = pkgs-unstable.waybar;

		style = builtins.readFile ./style.css;

		settings = [{
			layer = "top";
			position = "top";
			height = 30;
			margin = "10px 10px 0 10px";

			# Размещение модулей
			modules-left   = [ "custom/filesystem" "hyprland/workspaces" ];
			modules-center = [ "temperature" "memory" "cpu" ];
			modules-right  = [ "tray" "battery" "backlight" "pulseaudio" "hyprland/language" "keyboard-state" "clock" "network" "custom/powermenu"];



			# === Модули ===

			"tray" = {
				spacing = 8;
			};

			"custom/filesystem" = {
				format = " ";
				on-click = "wofi --show drun";
				tooltip = false;
			};

			"hyprland/workspaces" = {
				format = "{icon}";
				format-icons = {
					"1" = "";
					"2" = "";
					"3" = "";
					"4" = "";
					"5" = "";
					default = "";
					empty = "";
					persistent = "";
				};

				persistent-workspaces = {
					"*" = 5;
				};
			};

			# CPU
			cpu = {
				interval = 2;
				format = " {usage} %";
			};

			# Память
			memory = {
				interval = 2;
				format = " {used:0.2f} GiB";
			};

			# Температура
			temperature = {
				thermal-zone = 18;
				format = " {temperatureC} °C";
				critical-threshold = 70;
			};

			# Батарея
			battery = {
				bat = "BAT0";
				adapter = "ACAD";
				interval = 5;
				format = "{icon} {capacity}%";
				format-charging = " {capacity}%";
				format-icons = ["" "" "" "" ""];
			};

			# Звук (Alsa → Pulseaudio)
			pulseaudio = {
				reverse-scrolling = 1;
				format = "{icon} {volume}%";
				format-muted = "󰖁";
				format-icons = {
					default = [ "󰖀" "󰖀" "󰕾" "󰕾" ];
				};
				on-click = "pavucontrol";
			};

			"hyprland/language" = {
				format = "{}";
			    format-en = "us";
			    format-ru = "ru";
	            tooltip = true;
	            tooltip-format = "{long}";
			};
			
			"keyboard-state" = {
				numlock = false;
				scrollock = false;
				capslock = true;
				format = "{icon}";
			    format-icons = {
			        locked = "!";
			        unlocked = "";
			    };
			};

			# Часы
			clock = {
				interval = 60;
				format = " {:%H:%M}";
				format-alt = " {:%a, %d %b %Y}";
				tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
			};

			# Яркость
			backlight = {
				reverse-scrolling = 1;
				device = "intel_backlight";
				format = " {percent}%";
			};

			# Сеть (wifi/ethernet)
			network = {
				format-wifi = "";
				format-ethernet = "󰈁";
				format-disconnected = "󰖪";
				tooltip-format = "{essid} via {gwaddr}";
			};

			# Power Menu (кастом)
			"custom/powermenu" = {
				format = " ";
				on-click = "~/bin/powermenu";
			};
		}];
	};
}
