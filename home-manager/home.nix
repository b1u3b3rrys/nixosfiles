{ config, pkgs, ... }:

{

  home.stateVersion = "25.05";
dconf = {
    settings = {
        "org/cinnamon/desktop/applications/terminal" = {
            exec = "alacritty";
            # exec-arg = ""; # argument
        };
    };
};
  xdg.desktopEntries.nemo = {
    name = "Nemo";
    exec = "${pkgs.nemo}/bin/nemo";
};
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
        "inode/directory" = [ "nemo.desktop" ];
        "application/x-gnome-saved-search" = [ "nemo.desktop" ];
    };
};

  home.packages = [];


  };
  home.sessionVariables = {
    EDITOR = "micro";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
