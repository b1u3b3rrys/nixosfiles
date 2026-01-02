{ pkgs, config, ... }:
{

  # Programs and Software Settings 
  
  # Enable Steam for gaming
  programs.steam.enable = true;

  # System Packages 
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
