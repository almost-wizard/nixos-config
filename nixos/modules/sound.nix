{	
	# rtkit (optional, recommended) allows Pipewire to use 
	# the realtime scheduler for increased performance
	security.rtkit.enable = true;

	services.pipewire = {
		enable = true;

		alsa.enable = true;
		alsa.support32Bit = true;
		pulse.enable = true;

		# If you want to use JACK applications
		# jack.enable = true;
	};
}
