{
  programs.hyprlock = {
    enable = true;
  };
  home.file = {
    "hyprlock-macchiato" = {
      source = "./macchiato.conf";
      target = ".config/hypr/macchiato.conf";
    };
    "hyprlock-config" = {
      source = "./hyprlock.conf";
      target = ".config/hypr/hyprlock.conf";
    };
  };
}
