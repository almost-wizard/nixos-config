{ pkgs, ... }:

{
	environment.localBinInPath = true;
	
	users.users.alex = {
		isNormalUser = true;
		description = "alex";
		extraGroups = [ "networkmanager" "wheel" ];
		packages = with pkgs; [];
	};
}
