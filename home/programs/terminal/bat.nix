{
  home.sessionVariables = {
    MANPAGER = "sh -c 'col -bx | bat -l man -p'";
    MANROFFOPT = "-c";
  };
  programs.bat = {
    enable = true;
    catppuccin.enable = true;
  };
}
