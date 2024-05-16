{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    zplug = {
      enable = true;
      plugins = [
        { name = "zsh-users/zsh-autosuggestions"; }
        {
          name = "romkatv/powerlevel10k";
          tags = [ as:theme depth:1 ];
        }
        { name = "zdharma-continuum/fast-syntax-highlighting"; }
        { name = "peterhurford/up.zsh"; }
      ];
    };
    defaultKeymap = "viins";
    history.size = 10000;
  };
}
