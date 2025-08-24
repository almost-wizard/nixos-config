{
	wayland.windowManager.hyprland.settings = {
		"$mod" = "SUPER";

		bind = [
			"$mod, C, killactive"

			# Utils
			"$mod, V, exec, clip-manager"

			# Programs
			"$mod, Return, exec, alacritty"
			"$mod + Shift, B, exec, firefox"
			"$mod + Shift, T, exec, telegram-desktop"
			"$mod + Shift, V, exec, nekoray"

			# Move focus with mod + arrow keys
			"$mod, left,  movefocus, l"
			"$mod, right, movefocus, r"
			"$mod, up,    movefocus, u"
			"$mod, down,  movefocus, d"

			# Moving windows
			"$mod SHIFT, left,  swapwindow, l"
			"$mod SHIFT, right, swapwindow, r"
			"$mod SHIFT, up,    swapwindow, u"
			"$mod SHIFT, down,  swapwindow, d"

			# Window resizing                     X   Y
			"$mod CTRL, left,  resizeactive, -60  0"
			"$mod CTRL, right, resizeactive,  60  0"
			"$mod CTRL, up,    resizeactive,  0 -60"
			"$mod CTRL, down,  resizeactive,  0  60"

			# Switch workspaces
			"$mod, 1, workspace, 1"
			"$mod, 2, workspace, 2"
			"$mod, 3, workspace, 3"
			"$mod, 4, workspace, 4"
			"$mod, 5, workspace, 5"
			"$mod, 6, workspace, 6"
			"$mod, 7, workspace, 7"
			"$mod, 8, workspace, 8"
			"$mod, 9, workspace, 9"
			"$mod, 0, workspace, 10"

			# Move active window to a workspace
			"$mod SHIFT, 1, movetoworkspacesilent, 1"
			"$mod SHIFT, 2, movetoworkspacesilent, 2"
			"$mod SHIFT, 3, movetoworkspacesilent, 3"
			"$mod SHIFT, 4, movetoworkspacesilent, 4"
			"$mod SHIFT, 5, movetoworkspacesilent, 5"
			"$mod SHIFT, 6, movetoworkspacesilent, 6"
			"$mod SHIFT, 7, movetoworkspacesilent, 7"
			"$mod SHIFT, 8, movetoworkspacesilent, 8"
			"$mod SHIFT, 9, movetoworkspacesilent, 9"
			"$mod SHIFT, 0, movetoworkspacesilent, 10"
		];

		bindm = [
			"$mod, mouse:272, movewindow"
			"$mod, mouse:273, resizewindow"
		];
	};
}
