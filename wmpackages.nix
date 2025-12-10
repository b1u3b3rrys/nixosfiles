{pkgs ,lib,config, ...}:
{
xdg.icons.fallbackCursorThemes = [ "BreezeX-RosePine-Linux" ];
programs.xwayland.enable = true;
services.gvfs.enable = true;
services.displayManager.ly.enable = true;

  xdg.terminal-exec = {
    enable = true;
    settings = {
      default = [
        "alacritty.desktop"
      ];
    };
  };
programs.niri = {
	enable = true;
	useNautilus = true;
};
environment.systemPackages = with pkgs; [
	swaybg
	xdg-desktop-portal-gtk
	papirus-icon-theme
	git
	nautilus
	home-manager
	gnome-themes-extra
	xwayland-satellite
	alacritty        	
	rose-pine-cursor			
	mako
	fuzzel
	fastfetch
	hyfetch
	wl-clipboard
	nwg-look
	waybar
	htop	
];

}
