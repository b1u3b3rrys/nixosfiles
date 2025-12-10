{ config, pkgs, ... }:

{

#imports = [
  #./niri.nix
#];


#xdg.configFile."niri/config.kdl".force = true;
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "b1u3rchie";
  home.homeDirectory = "/home/b1u3rchie";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "26.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  
  gtk = {
    enable = true;
 };
    
 home.pointerCursor = {
    name = "BreezeX-RosePine-Linux";
    package = pkgs.rose-pine-cursor;
    size = 24;
    gtk.enable = true;
    x11.enable = true;
  };

  home.sessionVariables = {
    XCURSOR_THEME = "BreezeX-RosePine-Linux";
    XCURSOR_SIZE = "24";
    QT_QPA_PLATFORMTHEME = "gtk3";
  };
}
