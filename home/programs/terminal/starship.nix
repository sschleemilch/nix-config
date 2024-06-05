{
  programs.starship = {
    enable = true;
    catppuccin.enable = true;
    settings = {
      format = "[-](surface2)$os$username$directory$git_branch$git_state$git_status$fill$direnv$python$status$jobs$time[](surface2)$line_break$character";
      directory = {
        format = "[](fg:blue)[ $path](bold bg:blue fg:surface0)[](fg:blue)[-](surface2)";
      };
      username = {
        format = "[](fg:red)[ $user](bold bg:red fg:surface0)[](fg:red)[-](surface2)";
      };
      direnv = {
        disabled = false;
        format = "[](fg:teal)[$symbol$loaded/$allowed](bold bg:teal fg:surface0)[](fg:teal)[-](surface2)";
        symbol = " ";
        allowed_msg = "";
        loaded_msg = "";
        not_allowed_msg = "";
        denied_msg = "";
      };
      time = {
        disabled = false;
        format = "[](fg:rosewater)[ $time](bold bg:rosewater fg:surface0)[](fg:rosewater)[-](surface2)";
        time_format = "%R";
      };
      python = {
        format = "[](fg:yellow)[$symbol$pyenv_prefix($version )(\($virtualenv\))](bold bg:yellow fg:surface0)[](fg:yellow)[-](surface2)";
        symbol = " ";
      };
      fill = {
        disabled = false;
        symbol = "-";
        style = "surface2";
      };
      status = {
        disabled = false;
        format = "[](fg:red)[ $status](bold bg:red fg:surface0)[](fg:red)[-](surface2)";
      };
      jobs = {
        format = "[](fg:subtext1)[$symbol$number](bold bg:subtext1 fg:surface0)[](fg:subtext1)[-](surface2)";
        symbol = " ";
        number_threshold = 1;
      };
      os = {
        format = "[](fg:overlay2)[$symbol](bg:overlay2 fg:surface0)[](fg:overlay2)[-](surface2)";
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
        format = "[$ahead_behind $all_status](bold bg:peach fg:surface0)[](fg:peach)[-](surface2)";
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
