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
          "cpu"
          "temperature#cpu"
          "memory"
          "disk"
          "custom/fan"
          "systemd-failed-units"
          "custom/weather"
        ];
        modules-center = [
          "hyprland/workspaces"
        ];
        modules-right = [

        ];
        "custom/oslogo" = {
          format = "";
          interval = "once";
          tooltip = false;
        };
        cpu = {
          interval = 2;
          format = " {icon0}{icon1}{icon2}{icon3}{icon4}{icon5}{icon6}{icon7}";
          format-icons = [
            "<span color='#a6da95'>▁</span>" # green
            "<span color='#8aadf4'>▂</span>" # blue
            "<span color='#cad3f5'>▃</span>" # white
            "<span color='#cad3f5'>▄</span>" # white
            "<span color='#eed49f'>▅</span>" # yellow
            "<span color='#eed49f'>▆</span>" # yellow
            "<span color='#f5a97f'>▇</span>" # orange
            "<span color='ed8796'>█</span>" # red
          ];
        };
        "temperature#cpu" = {
          interval = 10;
          tooltip = false;
          critical-threshold = 80;
          format = " {temperatureC}°C";
          hwmon-path = "/sys/class/hwmon/hwmon1/temp1_input";
        };
        "memory" = {
          interval = 10;
          format = "󰾆 {used:0.1f}G";
          tooltip = true;
          tooltip-format = "Memory - {used:0.1f}GB used";
          on-click = "alacritty --title btop -e btop";
        };
        "disk" = {
          interval = 60;
          format = "󰋊 {percentage_used}%";
          path = "/";
          tooltip = true;
          tooltip-format = "HDD - {used} used out of {total} on {path} ({percentage_used}%)";
          on-click = "alacritty --title btop -e btop";
        };
        "custom/fan" = {
          format = "{}";
          exec = "~/.config/waybar/scripts/fan";
          interval = 5;
          return-type = "json";
        };
        "custom/weather" = {
          format = "{}";
          exec = "~/.config/waybar/scripts/weather";
          interval = 1800;
          return-type = "json";
        };
        "systemd-failed-units" = {
          hide-on-ok = true;
          format = "✗ {nr_failed}";
          format-ok = "✓";
          system = true;
          user = true;
        };
        "hyprland/workspaces" = {
          format = "{icon}";
          on-click = "activate";
          format-icons = {
            urgent = "";
            active = "";
            default = "";
          };
        };
      };
    };
  };
}
