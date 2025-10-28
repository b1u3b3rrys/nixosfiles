{ pkgs, ... }:
{
fonts.packages = with pkgs; [
  noto-fonts
  nerd-fonts.jetbrains-mono
  noto-fonts-cjk-sans
  noto-fonts-emoji
  liberation_ttf
];
}
