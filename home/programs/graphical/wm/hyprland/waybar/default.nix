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
  home.file.".config/waybar/config.jsonc" = {
    target = ".config/waybar/config.jsonc";
    source = ./config.jsonc;
  };
  home.file.".config/waybar/macchiato.css" = {
    target = ".config/waybar/macchiato.css";
    source = ./macchiato.css;
  };
  programs.waybar = {
    enable = true;
    style = ./style.css;
  };
}
