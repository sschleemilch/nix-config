{ pkgs, ... }: {
  imports = [
    ./tofi.nix
    ./swaync.nix
    ./waybar
    ./hyprland.nix
    ./hypridle.nix
    ./hyprlock
    ./waybar
  ];
  home.packages = with pkgs; [
    grimblast
    hyprpicker
    brightnessctl
    helvum
    swaybg
  ];
}
