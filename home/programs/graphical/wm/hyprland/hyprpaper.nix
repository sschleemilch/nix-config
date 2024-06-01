{
  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = "off";
      splash = false;
      splash_offset = 2.0;

      preload = [ "~/.config/wallpapers/nix-black-4k.png" ];

      wallpaper = [
        ",~/.config/wallpapers/nix-black-4k.png"
      ];
    };
  };
}
