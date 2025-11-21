
{pkgs,lib,config, ...}:
{

programs.xwayland.enable = true;
services.gvfs.enable = true;
services.displayManager.ly.enable = true;
xdg.portal.wlr.enable = true;

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
};
environment.systemPackages = with pkgs; [
	swaybg
	papirus-icon-theme
	git
	gnome-themes-extra
	xwayland-satellite
	nemo
	alacritty        	
	graphite-cursors			
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
