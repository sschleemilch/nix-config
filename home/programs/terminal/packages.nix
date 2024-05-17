{ pkgs, ... }: {
  home.packages = with pkgs; [
    neofetch
    file
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
