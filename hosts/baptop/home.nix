{ inputs
, outputs
, lib
, config
, pkgs
, ...
}: {
  imports = [
    ../../home/zsh.nix
    ../../home/bat.nix
    ../../home/fzf.nix
    ../../home/jq.nix
    ../../home/direnv.nix
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
    username = "basti";
    homeDirectory = "/home/basti";
    stateVersion = "23.11";
  };

  home.packages = with pkgs; [
    python3
  ];

  programs.home-manager.enable = true;
  programs.git = {
    enable = true;
    userName = "Sebastian Schleemilch";
    userEmail = "sebastian.schleemilch@posteo.net";
  };

  systemd.user.startServices = "sd-switch";
}
