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
    ./oh-my-posh
    ./zellij.nix
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
    gh
    python3
    pipenv
    poetry
    cargo
    cmake
    rustc
    libpcap
    protobuf
    graphviz
    gcc

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

    glow # markdown perviewer

    awscli2
    kubectl

    gnupg
  ];
}
