let
	uuid = "76b75668-38a7-484f-a57e-98112d2b677d"
	device = "/dev/disk/by-uuid/${uuid}"
in:
{
	swapDevices = [{ inherit device; }];

	boot.resumeDevice = device
}
