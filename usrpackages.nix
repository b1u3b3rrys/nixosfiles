{pkgs, ... }:
{
programs.steam.enable = true;
environment.systemPackages = with pkgs; [
	telegram-desktop
	librewolf
	cmatrix
	prismlauncher
	vesktop
	cava
	weechat
];
}
