{
	services.blueman.enable = true;
	
	hardware.bluetooth = {
		enable = true;
		powerOnBoot = true;
		settings = {
			General = {
				Enable = "Source,Sink,Media,Socket";
			        
				# Show battery charge of Bluetooth devices
				Experimental = true;
			};
		};
	};
}
