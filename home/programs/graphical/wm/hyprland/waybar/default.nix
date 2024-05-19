{
  home.file.".config/waybar/scripts/fan" = {
    source = ./scripts/fan;
    target = ".config/waybar/scripts/fan";
    executable = true;
  };
  home.file.".config/waybar/scripts/weather" = {
    target = ".config/waybar/scripts/weather";
    source = ./scripts/weather;
    executable = true;
  };
  programs.waybar = {
    enable = true;
    catppuccin.enable = true;
    catppuccin.mode = "createLink";
    style = ./style.css;
    settings = {
      mainBar = {
        layer = "top";
        height = 50;
        margin-top = 0;
        margin-left = 0;
        margin-bottom = 0;
        spacing = 0;
        modules-left = [
          "custom/oslogo"
        ];
        modules-center = [
          "hyprland/workspaces"
        ];
        "custom/oslogo" = {
          format = "";
          interval = "once";
          tooltip = false;
        };
      };
    };
  };
}
