 {pkgs, ...}:{
  imports = [
    ./alacritty.nix
    ./foot.nix
  ];
  home.packages = with pkgs; [
    firefox
  ];
}
