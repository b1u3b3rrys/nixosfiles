{ config, lib, pkgs, ... }:

{
  # System Settings
  
  # Set the system hostname
  networking.hostName = "nixos";  # Define your hostname.

  # Set the system time zone
  time.timeZone = "Europe/Bratislava";

  # Select internationalization properties
  i18n.defaultLocale = "en_UK.UTF-8";  # Default locale for the system
  i18n.extraLocaleSettings = {
    LC_TIME = "sk_SK.UTF-8";  # Set locale for Slovakia
  };

  # Configure keymap for X11 (US and Russian layouts)
  services.xserver.xkb = {
    layout = "us,ru";
    variant = "";  
  };

  # User Configuration 
  
  # Define a user account for "b1u3rchie"
  users.users.b1u3rchie = {
    isNormalUser = true;
    description = "b1u3rchie";  
    extraGroups = [ "networkmanager" "wheel" ];  
    packages = with pkgs; []; 
  };

  # Default user shell configuration
  users.defaultUserShell = pkgs.zsh;  
 
  # ZSH Configuration 
  
  programs.zsh = {
    enable = true;
    enableCompletion = true; 
    autosuggestions.enable = true;  
    syntaxHighlighting.enable = true; 
    oh-my-zsh = {
      enable = true;
      theme = "agnoster";  
    };
  };

  # Networking Settings 
  
  # Enable NetworkManager for managing network connections
  networking.networkmanager.enable = true;
}
