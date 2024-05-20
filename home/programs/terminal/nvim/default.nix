{ pkgs, ... }: {
  home.packages = with pkgs; [
    neovim
    ripgrep
    fd
  ];
  home.file = {
    "neovim-configs" = {
      source = ./configs;
      target = ".config/nvim";
      recursive = true;
    };
  };
  programs.zsh.shellAliases = {
    v = "nvim";
  };
}
