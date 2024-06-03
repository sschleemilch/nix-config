{
  programs.starship = {
    enable = true;
    catppuccin.enable = true;
    settings = {
      format = "$os$username$directory$git_branch$git_state$git_status$status$line_break$character";
      directory = {
        format = "[](fg:blue)[ $path](bold bg:blue fg:surface0)[](fg:blue) ";
      };
      username = {
        format = "[](fg:red)[ $user](bold bg:red fg:surface0)[](fg:red) ";
      };
      status = {
        disabled = false;
        format = "[](fg:red)[ $status](bold bg:red fg:surface0)[](fg:red) ";
      };
      direnv = {
        disabled = false;
        format = "[$symbol$loaded/$allowed]($style) ";
        style = "bold peach";
        symbol = " ";
      };
      os = {
        format = "[](fg:overlay2)[$symbol](bg:overlay2 fg:surface0)[](fg:overlay2) ";
        disabled = true;
        symbols = {
          Android = " ";
          Arch = " ";
          Debian = " ";
          Fedora = " ";
          Linux = " ";
          Macos = " ";
          NixOS = " ";
          Raspbian = " ";
          Ubuntu = " ";
          Windows = "󰍲 ";
        };
      };
      git_branch = {
        format = "[](fg:peach)[ $branch](bold bg:peach fg:surface0)";
      };
      git_state = {
        style = "bold peach";
      };
      git_status = {
        format = "[$ahead_behind $all_status](bold bg:peach fg:surface0)[](fg:peach) ";
        up_to_date = " 󰓦";
        conflicted = "󱐋";
        stashed = " ";
        modified = " ";
        staged = "󱊽";
        renamed = " ";
        deleted = " ";
      };
    };
  };
}
