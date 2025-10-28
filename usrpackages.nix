{pkgs, ... }:
{
programs.steam.enable = true;
environment.systemPackages = [
	pkgs.telegram-desktop
	pkgs.firefox
	pkgs.cmatrix
	pkgs.prismlauncher
	pkgs.discord	
];
}
