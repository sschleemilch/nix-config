{ pkgs
, inputs
, ...
}: {
  imports = [
    ./waybar
    ./hyprland.nix
    ./hypridle.nix
    ./hyprlock
    ./cliphist.nix
    ./hyprpaper.nix
    ./mako.nix
    ./tofi.nix
    ./theme.nix
  ];
  home.packages = with pkgs; [
    grimblast
    hyprpicker
    brightnessctl
    helvum
    wl-clipboard
    libnotify
  ];
}
