 {pkgs, ...}:{
  imports = [
    ./alacritty.nix
    ./foot.nix
    ./img
  ];
  home.packages = with pkgs; [
    firefox
  ];
  gtk.catppuccin.enable = false;
}
