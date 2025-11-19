{pkgs,lib,config, ...}:

{

programs.xwayland.enable = true;
services.gvfs.enable = true;
services.displayManager.ly.enable = true;
programs.niri = {
	enable = true;
};
environment.systemPackages = with pkgs; [
	swaybg
	papirus-icon-theme
	git
	fastfetch #for the hyfetch backend
	xwayland-satellite
	nemo
	alacritty
	gnome-themes-extra        	
	graphite-cursors			
	mako
	fuzzel
	gedit
	hyfetch
	xdg-desktop-portal-wlr
	wl-clipboard
	nwg-look
	waybar
	fastfetch
	htop	
];

}
