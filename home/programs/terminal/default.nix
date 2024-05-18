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
  ];
  home.packages = with pkgs; [
    comma # Install and run programs by sticking a , before them
    bc # Calculator
    ncdu # TUI disk usage
    neofetch
    fd # better find
    ripgrep #  better grep
    httpie # better curl
    diffsitter # better diff
    jq
    zip
    p7zip
    wget
    tcpdump
    nmap
    iftop
    tree
    python3
    curl
  ];
}
