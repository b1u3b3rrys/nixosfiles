{ pkgs, config, ... }:
{

  # Programs and Software Settings 
  
  # Enable Steam for gaming
  programs.steam.enable = true;

  # System Packages 
  environment.systemPackages = with pkgs; [
    telegram-desktop      # Messaging app
    librewolf             # Privacy-focused browser
    cmatrix               # Terminal matrix screensaver
    prismlauncher         # Game launcher (presumably)
    vesktop               # Virtual desktop software (if applicable)
    cava                  # Console-based audio visualizer
    weechat               # Command-line chat client
  ];
}
