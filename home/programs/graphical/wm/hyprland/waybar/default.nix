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
    systemd.enable = true;
    systemd.target = "hyprland-session.target";
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
          "wireplumber"
          "backlight"
          "bluetooth"
          "battery"
          "network"
          "custom/separator#line"
          "custom/reboot"
          "custom/poweroff"
          "clock"
        ];
        "custom/poweroff" = {
          format = "{}";
          exec = "echo ; echo  Shutdown";
          interval = 86400; # once every day
          tooltip = true;
          on-click = "systemctl poweroff";
        };
        "custom/reboot" = {
          format = "";
          exec = "echo ; echo  Reboot";
          interval = 86400; # once every day
          tooltip = true;
          on-click = "systemctl reboot";
        };
        clock = {
          tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
          format = "{:%H:%M, %a %d}";
          format-alt = "{:%Y-%m-%d}";
        };
        "custom/separator#line" = {
          format = "|";
          interval = "once";
          tooltip = false;
        };
        network = {
          interface = "wlp1s0";
          format = "{ifname}";
          format-wifi = "{icon}";
          format-ethernet = "󰌘";
          format-disconnected = "󰌙";
          tooltip-format = "{ifname} via {gwaddr} 󰊗";
          tooltip-format-wifi = "{icon} {essid} ({signalStrength}%)";
          tooltip-format-ethernet = "{ifname} ";
          tooltip-format-disconnected = "Disconnected";
          format-icons = ["󰤯" "󰤟" "󰤢" "󰤥" "󰤨"];
          max-length = 50;
          on-click = "alacritty --title nmtui -e nmtui";
        };
        "network#speed" = {
          interval = 2;
          format = "{ifname}";
          format-wifi = " {bandwidthUpBytes}  {bandwidthDownBytes}";
          format-ethernet = " {bandwidthDownBytes}";
          format-disconnected = "󰌙";
          tooltip-format = "{ipaddr}";
          format-linked = "󰈁 {ifname} (No IP)";
          tooltip-format-wifi = "{essid} {icon} {signalStrength}%";
          tooltip-format-ethernet = "{ifname} ";
          tooltip-format-disconnected = "󰌙 Disconnected";
          max-length = 50;
          format-icons = ["󰤯" "󰤟" "󰤢" "󰤥" "󰤨"];
        };
        battery = {
          interval = 30;
          states = {
            good = 95;
            warning = 30;
            critical = 20;
          };
          format = "{icon} {capacity}%";
          format-charging = " {capacity}%";
          format-plugged = " {capacity}%";
          format-alt = "{time} {icon}";
          format-icons = [
            "󰂎"
            "󰁺"
            "󰁻"
            "󰁼"
            "󰁽"
            "󰁾"
            "󰁿"
            "󰂀"
            "󰂁"
            "󰂂"
            "󰁹"
          ];
        };
        bluetooth = {
          format = "";
          format-disabled = "󰂳";
          format-connected = "󰂱 {num_connections}";
          tooltip-format = " {device_alias}";
          tooltip-format-connected = "{device_enumerate}";
          tooltip-format-enumerate-connected = " {device_alias} 󰂄{device_battery_percentage}%";
          tooltip = true;
          on-click = "blueman-manager";
        };
        backlight = {
          device = "amdgpu_bl1";
          format = "{icon}{percent}%";
          format-icons = [" " " " " " "󰃝 " "󰃞 " "󰃟 " "󰃠 "];
          on-scroll-up = "brightnessctl set 1%+";
          on-scroll-down = "brightnessctl set 1%-";
          tooltip = false;
        };
        wireplumber = {
          format = "{icon} {volume}%";
          format-muted = "";
          on-click = "helvum";
          format-icons = ["" "" "󰕾" ""];
        };
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
