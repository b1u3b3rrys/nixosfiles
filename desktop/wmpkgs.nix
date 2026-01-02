{ pkgs, lib, config, ... }:
{
  # System-wide Settings 
  environment.systemPackages = with pkgs; [
    swaybg
    micro
    git
    nautilus
    home-manager
    gnome-themes-extra
    xwayland-satellite
    alacritty
    mako
    fuzzel
    fastfetch
    hyfetch
    wl-clipboard
    nwg-look
    waybar
    htop
  ];

  # X11 and Wayland Settings 
  # Xwayland enables compatibility for X11 apps on Wayland
  programs.xwayland.enable = true;

  # GVFS for virtual filesystem support (for browsing remote locations, etc.)
  services.gvfs.enable = true;

  # Display manager configuration for LightDM (ly)
  services.displayManager.ly.enable = true;

  # Desktop Environment and Portal Configuration 
  xdg.portal = {
    enable = true;
    wlr.enable = true; 
  };

  # Cursor Themes (steam with xwayland hate these cursors btw)
  xdg.icons.fallbackCursorThemes = [ "BreezeX-RosePine-Linux" ];

  # Terminal Settings 
  xdg.terminal-exec = {
    enable = true;
    settings = {
      default = [ "alacritty.desktop" ];  # Default terminal
    };
  };

  # Programs 
  programs.nano.enable = false;  # Disabling Nano as editor
  programs.niri = {
    enable = true;
    useNautilus = true;  # Enable Niri file manager with Nautilus
  };
}
