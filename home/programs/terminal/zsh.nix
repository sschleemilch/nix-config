{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting = {
      enable = true;
      catppuccin.enable = true;
      highlighters = [
        "brackets"
      ];
    };
    autosuggestion = {
      enable = true;
    };
    defaultKeymap = "viins";
    history.size = 10000;
    sessionVariables = {
      NIX_CONFIG = "experimental-features = nix-command flakes";
    };
  };
}
