{ pkgs, ... }: {
  imports = [
    ./bat.nix
    ./btop.nix
    ./direnv.nix
    ./eza.nix
    ./fzf.nix
    ./go.nix
    ./k9s.nix
    ./lazygit.nix
    ./tmux.nix
    ./zoxide.nix
    ./zsh.nix
    ./htop.nix
    ./nvim
    ./starship.nix
  ];
  home.packages = with pkgs; [
    comma # Install and run programs by sticking a , before them
    bc # Calculator
    ncdu # TUI disk usage
    fastfetch
    fd # better find
    ripgrep #  better grep
    diffsitter # better diff
    jq # json processor
    yq-go # yaml processor

    zip
    p7zip
    unzip

    python3
    cargo
    rustc

    # networking
    httpie # better curl
    curl
    tcpdump
    nmap
    iftop
    iperf3
    dnsutils
    socat
    ipcalc

    iotop

    # syscall monitoring
    strace # syscalls
    ltrace # library calls
    lsof # list open files

    glow # markdown perviewer

    lm_sensors

    # buildings
    gnumake

    cyme # better lsusb
  ];
}
