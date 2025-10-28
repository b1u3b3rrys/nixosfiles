{ config, ... }:
{
	services.xserver.videoDrivers = ["nvidia"];

	hardware.graphics = {
	enable = true;
	};
hardware.nvidia = {
	modesetting.enable = true;
	powerManagement.enable = false;
	powerManagement.finegrained = false;
	open = false;
	package = config.boot.kernelPackages.nvidiaPackages.latest;
   };
}
