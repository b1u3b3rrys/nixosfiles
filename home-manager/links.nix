{ config, lib, pkgs, ... }:
{
xdg.configFile."niri/75.jpg".source = ./75.jpg;
xdg.configFile."fuzzel/fuzzel.ini".source = ./fuzzel/fuzzel.ini;
xdg.configFile."niri/config.kdl".source = ./niri/config.kdl;
xdg.configFile."alacritty/alacritty.toml".source = ./alacritty/alacritty.toml;
xdg.configFile."fuzzel/powermenu.sh".source = ./fuzzel/powermenu.sh;
}
