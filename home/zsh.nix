{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    zplug = {
      enable = true;
      plugins = [
        {name = "zsh-users/zsh-autosuggestions";}
        {
          name = "romkatv/powerlevel10k";
          tags = [as:theme depth:1];
        }
        {name = "zdharma-continuum/fast-syntax-highlighting";}
        {name = "peterhurford/up.zsh";}
      ];
    };
    history.size = 10000;
    initExtra = ''
      bindkey -v
    '';
  };
  programs.fzf = {
    enable = true;
    colors = {
      "bg+" = "#363a4f";
      bg = "#24273a";
      spinner = "#f4dbd6";
      hl = "#ed8796";
      fg = "#cad3f5";
      header = "#ed8796";
      info = "#c6a0f6";
      pointer = "#f4dbd6";
      marker = "#f4dbd6";
      "fg+" = "#cad3f5";
      prompt = "#c6a0f6";
      "hl+" = "#ed8796";
    };
  };
  programs.direnv = {
    enable = true;
  };
}
