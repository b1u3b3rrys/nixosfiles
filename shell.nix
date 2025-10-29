{ pkgs, ... }: {
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
