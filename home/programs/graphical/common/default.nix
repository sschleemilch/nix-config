{ pkgs, ... }: {
  imports = [
    ./foot.nix
    ./img
    ./firefox
  ];
  home.packages = with pkgs; [
    bitwarden-desktop
  ];
}
