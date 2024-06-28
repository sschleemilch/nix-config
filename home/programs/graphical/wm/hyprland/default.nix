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
    ./anyrun.nix
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
      flavor = "macchiato";
      accent = "blue";
      size = "standard";
      tweaks = [ "normal" ];
      icon = {
        enable = true;
        accent = "blue";
      };
    };
  };
}
