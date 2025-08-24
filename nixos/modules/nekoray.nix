{ pkgs, ... }:

{
	# This gives access to create VPN tunnel within root mode
	security.wrappers.nekoray = {
		source = "${pkgs.nekoray}/bin/nekoray";
		owner = "root";
		group = "root";
		capabilities = "cap_net_admin+ep";
	};
}
