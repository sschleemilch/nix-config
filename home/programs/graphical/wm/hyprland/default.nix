{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ./tofi.nix
    ./swaync.nix
    ./waybar
    ./hyprland.nix
    ./hypridle.nix
    ./hyprlock
    ./cliphist.nix
    ./hyprpaper.nix
  ];
  home.packages = with pkgs; [
    grimblast
    hyprpicker
    brightnessctl
    helvum
    wl-clipboard
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
