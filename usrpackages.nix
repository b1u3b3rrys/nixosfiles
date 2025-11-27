{pkgs, ... }:
{
programs.steam.enable = true;
environment.systemPackages = with pkgs; [
	telegram-desktop
	firefox
	cmatrix
	prismlauncher
	vesktop
	cava
];
}
