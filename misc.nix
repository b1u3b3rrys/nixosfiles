
{ config, lib, pkgs, ... }:
{
programs.nano.enable = false;
 environment.systemPackages = with pkgs;  [
    micro
  ];
   environment.variables = {
   		EDITOR = "micro";
   };
  programs.zsh = {
   enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
oh-my-zsh = {
      enable = true;
      theme = "agnoster"; 
    };
};
users.defaultUserShell = pkgs.zsh;
}
