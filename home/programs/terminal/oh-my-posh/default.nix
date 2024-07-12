{ pkgs, ... }: {
  home.packages = with pkgs; [
    oh-my-posh
  ];
  home.file = {
    omp_theme = {
      source = ./theme.json;
      target = ".config/oh-my-posh/theme.json";
    };
  };
  programs.zsh.initExtra = ''
    eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/theme.json)"
  '';
}
