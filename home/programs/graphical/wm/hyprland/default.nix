{ pkgs, ... }: {
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
  ];
}
