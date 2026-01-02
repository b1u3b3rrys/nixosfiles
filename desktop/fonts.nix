{ pkgs, ... }:
{

# Fonts, i cant say something about that config
fonts.packages = with pkgs; [

  noto-fonts
  nerd-fonts.iosevka
  noto-fonts-cjk-sans
  noto-fonts-color-emoji
  liberation_ttf

];
}