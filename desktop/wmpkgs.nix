{ pkgs, lib, config, ... }:
{
  # System-wide Settings 
  environment.systemPackages = with pkgs; [
   micro
   xwayland-satellite
   fastfetch
   hyfetch
   wl-clipboard
   waybar
  	fuzzel
	  alacritty
	  mako
	  swaybg
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
    xdgOpenUsePortal = true;
    wlr.enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gtk
      pkgs.xdg-desktop-portal-gnome
    ];

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
