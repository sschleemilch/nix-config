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
  ];
  home.packages = with pkgs; [
    grimblast
    hyprpicker
    brightnessctl
    helvum
    swaybg
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
    };
  };
}
