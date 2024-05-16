{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    zplug = {
      enable = true;
      plugins = [
        { name = "zsh-users/zsh-autosuggestions"; }
        { name = "mafredri/zsh-async"; }
        {
          name = "sindresorhus/pure";
          tags = [ as:theme depth:1 use:pure.zsh ];
        }
        { name = "zdharma-continuum/fast-syntax-highlighting"; }
        { name = "peterhurford/up.zsh"; }
      ];
    };
    defaultKeymap = "viins";
    history.size = 10000;
  };
}
