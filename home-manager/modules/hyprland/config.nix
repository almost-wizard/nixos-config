{
	wayland.windowManager.hyprland = {
		enable = true;
		xwayland.enable = true;

		settings = {
			debug = {
				disable_logs = false;
				enable_stdout_logs = true;
			};

			exec-once = [
				"wl-paste --type text --watch cliphist store"
				"wl-paste --type image --watch cliphist store"
			];

			general = {
				gaps_in = 5;
				gaps_out = 20;
				border_size = 3;
				"col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
				"col.inactive_border" = "rgba(595959aa)";

				# layout = "dwindle";

				# no_cursor_warps = false;
			};

			decoration = {
				rounding = 10;

				blur = {
					enabled = true;
					size = 16;
					passes = 2;
					new_optimizations = true;
				};

				# drop_shadow = true;
				# shadow_range = 4;
				# shadow_render_power = 3;
				# "col.shadow" = "rgba(1a1a1aee)";
			};

			animations = {
				enabled = true;

				bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
				# bezier = "myBezier, 0.33, 0.82, 0.9, -0.08";

				animation = [
					"windows,     1, 7,  myBezier"
					"windowsOut,  1, 7,  default, popin 80%"
					"border,      1, 10, default"
					"borderangle, 1, 8,  default"
					"fade,        1, 7,  default"
					"workspaces,  1, 6,  default"
				];
			};

			gestures = {
				workspace_swipe = true;
				workspace_swipe_fingers = 3;
				workspace_swipe_invert = false;
				workspace_swipe_distance = 200;
				workspace_swipe_forever = true;
			};

			misc = {
				animate_manual_resizes = true;
				animate_mouse_windowdragging = true;
				enable_swallow = true;
				render_ahead_of_time = false;
				disable_hyprland_logo = true;
			};
		};
	};
}
