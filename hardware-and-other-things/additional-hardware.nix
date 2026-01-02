{ config, ... }:
{
#linux kernel:
boot.kernelPackages = pkgs.linuxPackages_latest;
#bootloader settings:
boot.loader.systemd-boot.enable = true;
boot.loader.efi.canTouchEfiVariables = true;
#pipewire:
security.rtkit.enable = true;
  services.pipewire = {
    enable = true; # if not already enabled
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };
# additional pkgs for pipewire:
  environment.systemPackages = with pkgs; [
    pamixer
    pwvucontrol
    playerctl	
  ];





nvidia driver settings:
	services.xserver.videoDrivers = ["nvidia"];
	hardware.graphics = {
	enable = true;
	};
hardware.nvidia = {
	modesetting.enable = true;
	powerManagement.enable = false;
	powerManagement.finegrained = false;
	open = true;
	package = config.boot.kernelPackages.nvidiaPackages.beta;
   };
}