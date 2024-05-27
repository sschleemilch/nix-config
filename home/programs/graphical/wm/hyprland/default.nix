{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ./tofi.nix
    ./waybar
    ./hyprland.nix
    ./hypridle.nix
    ./hyprlock
    ./cliphist.nix
    ./hyprpaper.nix
    ./mako.nix
  ];
  home.packages = with pkgs; [
    grimblast
    hyprpicker
    brightnessctl
    helvum
    wl-clipboard
    libnotify
  ];
  gtk = {
    enable = true;
    catppuccin = {
      enable = true;
      flavour = "macchiato";
      accent = "blue";
      size = "standard";
      tweaks = ["normal"];
      cursor = {
        enable = true;
        accent = "dark";
      };
      icon = {
        enable = true;
        accent = "blue";
      };
    };
  };
}
