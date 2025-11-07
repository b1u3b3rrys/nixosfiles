{pkgs, ... }:
{
programs.steam.enable = true;
environment.systemPackages = with pkgs; [
	ayugram-desktop
	firefox
	cmatrix
	prismlauncher
	vesktop
	cava
];
}
