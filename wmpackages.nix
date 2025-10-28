{pkgs,lib,config, ...}:

{

programs.xwayland.enable = true;
services.gvfs.enable = true;

programs.niri = {
	enable = true;
};
environment.systemPackages = [
	pkgs.swaybg
	pkgs.xwayland-satellite
	pkgs.nemo
	pkgs.kitty
	pkgs.gnome-themes-extra
	pkgs.papirus-icon-theme
	pkgs.mako
	pkgs.fuzzel
	pkgs.git
	pkgs.vim
	pkgs.gedit
	pkgs.fastfetch
	pkgs.xdg-desktop-portal-gtk
	pkgs.wl-clipboard
	pkgs.nwg-look
	pkgs.waybar	
];


}
