{ inputs
, outputs
, lib
, config
, pkgs
, ...
}: {
  imports = [
    ../../home/programs/terminal
    ../../home/programs/common.nix
  ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # Add overlays your own flake exports (from overlays and pkgs dir):
      outputs.overlays.additions
      outputs.overlays.modifications

      # You can also add overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
  };

  home = {
    username = "Q534774";
    homeDirectory = "/Users/Q534774";
    stateVersion = "23.11";
    sessionVariables = {
      http_proxy = "http://127.0.0.1:3128";
      https_proxy = "http://127.0.0.1:3128";
    };
  };

  programs.zsh.shellAliases = {
    clip = "pbcopy";
  };

  programs.home-manager.enable = true;
  programs.git = {
    enable = true;
    userName = "Sebastian Schleemilch";
    userEmail = "sebastian.schleemilch@bmw.de";
    extraConfig = {
      core.editor = "nvim";
    };
  };
}
