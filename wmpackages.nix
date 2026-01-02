{pkgs ,lib,config, ...}:
{
xdg.icons.fallbackCursorThemes = [ "BreezeX-RosePine-Linux" ];
programs.xwayland.enable = true;
services.gvfs.enable = true;
services.displayManager.ly.enable = true;
xdg.portal = {
	enable = true;
	wlr.enable = true;
};
programs.nano.enable = false;
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

}
