let
	uuid = "4baa3c44-90d2-497a-9bb7-fd0e9b3d443c";
	device = "/dev/disk/by-uuid/${uuid}";
in
{
	swapDevices = [{ inherit device; }];

	powerManagement.enable = true;

	# Enable better suspend mode
	boot.kernelParams = ["mem_sleep_default=deep"];
	boot.resumeDevice = device;
	
	services = {	
		power-profiles-daemon.enable = true;
		
		logind = {
			# Suspend, then hibernate when closing the lid
			lidSwitch = "suspend-then-hibernate";
		
			powerKey = "hibernate";
			powerKeyLongPress = "poweroff";
		};
	};

	# Define time delay for hibernation
	systemd.sleep.extraConfig = ''
	  HibernateDelaySec=30m
	  SuspendState=mem
	'';
}
