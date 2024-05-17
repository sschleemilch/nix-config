{
  programs.zsh = {
    enable = true;
    enableCompletion = false;
    antidote = {
      enable = true;
      plugins = [
        "mattmc3/zephyr path:plugins/completion"
        "sindresorhus/pure"
        # "romkatv/powerlevel10k kind:fpath"
        "https://github.com/peterhurford/up.zsh"
        "romkatv/zsh-bench kind:path"
        "ohmyzsh/ohmyzsh path:lib/clipboard.zsh"
        "ohmyzsh/ohmyzsh path:plugins/copybuffer"
        "ohmyzsh/ohmyzsh path:plugins/copyfile"
        "ohmyzsh/ohmyzsh path:plugins/copypath"
        "ohmyzsh/ohmyzsh path:plugins/extract"
        "belak/zsh-utils path:history"
        "belak/zsh-utils path:utility"
        "belak/zsh-utils path:editor"
        "zdharma-continuum/fast-syntax-highlighting kind:defer"
        "zsh-users/zsh-autosuggestions"
      ];
    };
    defaultKeymap = "viins";
    history.size = 10000;
  };
}
