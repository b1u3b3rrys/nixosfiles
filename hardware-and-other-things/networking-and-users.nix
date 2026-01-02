{ config, lib, pkgs, ... }:
{
networking.hostName = "nixos"; # Define your hostname.
home-manager = {
	backupFileExtension = "hm-backup";
};
  # Enable networking
  networking.networkmanager.enable = true;
  # Set your time zone.
  time.timeZone = "Europe/Bratislava";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "sk_SK.UTF-8";
    LC_IDENTIFICATION = "sk_SK.UTF-8";
    LC_MEASUREMENT = "sk_SK.UTF-8";
    LC_MONETARY = "sk_SK.UTF-8";
    LC_NAME = "sk_SK.UTF-8";
    LC_NUMERIC = "sk_SK.UTF-8";
    LC_PAPER = "sk_SK.UTF-8";
    LC_TELEPHONE = "sk_SK.UTF-8";
    LC_TIME = "sk_SK.UTF-8";
  };

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us,ru";
    variant = "";
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.b1u3rchie = {
    isNormalUser = true;
    description = "b1u3rchie";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };
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
users.defaultUserShell = pkgs.zsh;
}