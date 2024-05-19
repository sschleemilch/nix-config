{ pkgs, ... }: {
  imports = [
    ./tofi.nix
    ./swaync.nix
    ./waybar.nix
    ./hyprland.nix
    ./hypridle.nix
    ./hyprlock.nix
  ];
  home.packages = with pkgs; [
    grimblast
    hyprpicker
    brightnessctl
  ];
}
