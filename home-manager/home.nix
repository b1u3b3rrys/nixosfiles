{ config, pkgs, ... }:

{
  # Import External Config 
  imports = [
    ./links.nix
  ];

# Packages
home.packages = with pkgs; [
	waybar
	fuzzel
	alacritty
	mako
	xwayland-satellite
	swaybg
  htop
];

  # Environment Variables 
  environment.variables = {
    EDITOR = "micro";  # 
  };

  # GTK Configuration 
  gtk = {
    enable = true;

    # GTK Icon Theme Settings
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };

    # GTK Theme Settings
    theme = {
      name = "adw-gtk3";
      package = pkgs.adw-gtk3;
    };

    # GTK4 and GTK3 Dark Mode Preference
    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
  };

  # Cursor Settings 
  home.pointerCursor = {
    name = "BreezeX-RosePine-Linux";
    package = pkgs.rose-pine-cursor;
    size = 24;
    gtk.enable = true;
    x11.enable = true;
  };

  # Home Manager Settings 
  home.username = "b1u3rchie";  # Set username for Home Manager
  home.homeDirectory = "/home/b1u3rchie";  # Set home directory

  # Home Manager release version to ensure compatibility
  home.stateVersion = "26.05";

  # Enable Home Manager
  programs.home-manager.enable = true;

  # XDG Configurations 
  # Force GTK settings to be applied
  xdg.configFile."gtk-4.0/settings.ini".force = true;

  # Session Variables 
  home.sessionVariables = {
    XCURSOR_THEME = "BreezeX-RosePine-Linux"; 
    XCURSOR_SIZE = "24";  
    QT_QPA_PLATFORMTHEME = "gtk4";  
    QT_QPA_PLATFORM = "wayland";  
    SDL_VIDEODRIVER = "wayland";  
    XDG_SESSION_TYPE = "wayland";  
  };
}
