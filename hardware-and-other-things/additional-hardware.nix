{ config, ... }:

{
  # Linux Kernel Configuration 
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Bootloader Settings 
  boot.loader.systemd-boot.enable = true;  # Enable systemd-boot as the bootloader
  boot.loader.efi.canTouchEfiVariables = true;  # Allow system to modify EFI variables

  # Pipewire Configuration 
  services.pipewire = {
    enable = true;  
    alsa.enable = true;  
    alsa.support32Bit = true;  
    pulse.enable = true;  
    jack.enable = true; 
  };

  # Additional Pipewire packages for control and management
  environment.systemPackages = with pkgs; [
   pw-volume       
   wiremix    
   playerctl        
  ];

  # NVIDIA Driver Settings
  services.xserver.videoDrivers = [ "nvidia" ];  # Use NVIDIA as the X server video driver
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
