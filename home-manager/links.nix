{ config, lib, pkgs, ... }:
{
#niri
xdg.configFile."niri/75.jpg".source = ./75.jpg;
xdg.configFile."niri/config.kdl".source = ./niri/config.kdl;
#alacritty
xdg.configFile."alacritty/alacritty.toml".source = ./alacritty/alacritty.toml;
#mako
xdg.configFile."mako/config".source = ./mako/config;
#waybar
xdg.configFile."waybar/config.jsonc".source = ./waybar/config.jsonc;
xdg.configFile."waybar/style.css".source = ./waybar/style.css;
#fuzzel
xdg.configFile."fuzzel/powermenu.sh".source = ./fuzzel/powermenu.sh;
xdg.configFile."fuzzel/fuzzel.ini".source = ./fuzzel/fuzzel.ini;
}
