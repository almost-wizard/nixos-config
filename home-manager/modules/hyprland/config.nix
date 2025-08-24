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
		};
	};
}
