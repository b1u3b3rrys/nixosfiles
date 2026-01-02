{ config, lib, pkgs, ... }:

{
  xdg.configFile = {
    # Niri Configuration
    "niri/75.jpg".source = ./75.jpg;
    "niri/config.kdl".source = ./niri/config.kdl;

    # Alacritty Configuration
    "alacritty/alacritty.toml".source = ./alacritty/alacritty.toml;

    # Mako Configuration
    "mako/config".source = ./mako/config;

    # Waybar Configuration
    "waybar/config.jsonc".source = ./waybar/config.jsonc;
    "waybar/style.css".source = ./waybar/style.css;

    # Fuzzel Configuration
    "fuzzel/powermenu.sh".source = ./fuzzel/powermenu.sh;
    "fuzzel/fuzzel.ini".source = ./fuzzel/fuzzel.ini;
  };
}
