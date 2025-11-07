{ pkgs, ... }:
{
fonts.packages = with pkgs; [
  noto-fonts
  nerd-fonts.jetbrains-mono
  nerd-fonts.comic-shanns-mono
  noto-fonts-cjk-sans
  noto-fonts-color-emoji
  liberation_ttf
];
}
