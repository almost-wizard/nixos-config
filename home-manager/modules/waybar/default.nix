{
	imports = [
		./style.nix
	];
	
	programs.waybar = {
		enable = true;
		settings = {
			mainBar = {
				layer = "top";
				position = "top";
				margin = "9 13 -10 18";

				modules-left = ["hyprland/workspaces" "hyprland/language" "keyboard-state" "hyprland/submap"];
				modules-center = ["clock"];
				modules-right = ["pulseaudio" "custom/mem" "cpu" "backlight" "battery"];

				"hyprland/workspaces" = {
					disable-scroll = true;
				};

				"hyprland/language" = {
					format-en = "US";
					format-ru = "RU";
					min-length = 5;
					tooltip = false;
				};

				"keyboard-state" = {
					#numlock = true;
					capslock = true;
					format = "{icon} ";
					format-icons = {
							locked = " ";
							unlocked = "";
					};
				};

				"clock" = {
					# timezone = "America/New_York";
					tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
					format = "{:%a; %d %b, %I:%M %p}";
				};

				"pulseaudio" = {
					# scroll-step = 1; # %, can be a float
					reverse-scrolling = 1;
					format = "{volume}% {icon} {format_source}";
					format-bluetooth = "{volume}% {icon} {format_source}";
					format-bluetooth-muted = " {icon} {format_source}";
					format-muted = " {format_source}";
					format-source = "{volume}% ";
					format-source-muted = "";
					format-icons = {
						headphone = "";
						hands-free = "";
						headset = "";
						phone = "";
						portable = "";
						car = "";
						default = ["" "" ""];
					};
					on-click = "pavucontrol";
					min-length = 13;
				};

				"custom/mem" = {
					format = "{} ";
					interval = 3;
					exec = "free -h | awk '/Mem:/{printf $3}'";
					tooltip = false;
				};

				"cpu" = {
					interval = 2;
					format = "{usage}% ";
					min-length = 6;
				};

				"temperature" = {
					# thermal-zone = 2;
					# hwmon-path = "/sys/class/hwmon/hwmon2/temp1_input";
					critical-threshold = 130;
					# format-critical = "{temperatureC}°C {icon}";
					format = "{temperatureC}°C {icon}";
					format-icons = ["" "" "" "" ""];
					tooltip = false;
				};

				"backlight" = {
					reverse-scrolling = 1;
					device = "intel_backlight";
					format = "{percent}% {icon}";
					format-icons = [""];
					min-length = 7;
				};

				battery = {
					states = {
							warning = 30;
							critical = 15;
					};
					format = "{capacity}% {icon}";
					format-charging = "{capacity}% ";
					format-plugged = "{capacity}% ";
					format-alt = "{time} {icon}";
					format-icons = ["" "" "" "" "" "" "" "" "" ""];
					#on-update = "$HOME/.config/waybar/scripts/check_battery.sh";
				};

				# tray = {
				# 	icon-size = 16;
				# 	spacing = 0;
				# };

				style = ./style.css;
			};
		};
	};
}
