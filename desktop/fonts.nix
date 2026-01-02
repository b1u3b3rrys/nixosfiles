{ pkgs, ... }:
{
fonts.packages = with pkgs; [
  noto-fonts
  nerd-fonts.iosevka
  noto-fonts-cjk-sans
  noto-fonts-color-emoji
  liberation_ttf
];
}