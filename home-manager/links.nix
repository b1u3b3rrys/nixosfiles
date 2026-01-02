{ config, lib, pkgs, ... }:

{
  # === Niri Configuration ===
  xdg.configFile."niri/75.jpg".source = ./75.jpg;
  xdg.configFile."niri/config.kdl".source = ./niri/config.kdl;

  # === Alacritty Configuration ===
  xdg.configFile."alacritty/alacritty.toml".source = ./alacritty/alacritty.toml;

  # === Mako Configuration ===
  xdg.configFile."mako/config".source = ./mako/config;

  # === Waybar Configuration ===
  xdg.configFile."waybar/config.jsonc".source = ./waybar/config.jsonc;
  xdg.configFile."waybar/style.css".source = ./waybar/style.css;

  # === Fuzzel Configuration ===
  xdg.configFile."fuzzel/powermenu.sh".source = ./fuzzel/powermenu.sh;
  xdg.configFile."fuzzel/fuzzel.ini".source = ./fuzzel/fuzzel.ini;
}
