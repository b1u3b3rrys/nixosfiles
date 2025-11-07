{pkgs,lib,config, ...}:

{

programs.xwayland.enable = true;
services.gvfs.enable = true;

programs.niri = {
	enable = true;
};
environment.systemPackages = with pkgs; [
	swaybg
	xwayland-satellite
	xfce.thunar
	kitty
	gnome-themes-extra
	papirus-icon-theme
	mako
	fuzzel
	git
	gedit
	fastfetch
	xdg-desktop-portal-gtk
	wl-clipboard
	nwg-look
	kdePackages.breeze-gtk
	waybar	
];


}
