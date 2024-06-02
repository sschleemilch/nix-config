{
  programs.starship = {
    enable = true;
    catppuccin.enable = true;
    settings = {
      status = {
        disabled = false;
        symbol = " ";
      };
      aws.symbol = "  ";
      c.symbol = " ";
      conda.symbol = " ";
      crystal.symbol = " ";
      dart.symbol = " ";
      directory.read_only = " 󰌾";
      docker_context.symbol = " ";
      git_branch.symbol = " ";
      golang.symbol = " ";
      hostname.ssh_symbol = " ";
      java.symbol = " ";
      julia.symbol = " ";
      kotlin.symbol = " ";
      lua.symbol = " ";
      memory_usage.symbol = "󰍛 ";
      nix_shell.symbol = " ";
      nodejs.symbol = " ";
      os.symbols = {
        Android = " ";
        Arch = " ";
        Debian = " ";
        Fedora = " ";
        Linux = " ";
        Macos = " ";
        NixOS = " ";
        Raspbian = " ";
        Ubuntu = " ";
        Windows = "󰍲 ";
      };
      package.symbol = "󰏗 ";
      perl.symbol = " ";
      php.symbol = " ";
      python.symbol = " ";
      rust.symbol = " ";
    };
  };
}
