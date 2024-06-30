{ pkgs, ... }: {
  qt.style.catppuccin = {
    enable = true;
    accent = "blue";
    apply = true;
  };
  home.pointerCursor = {
    gtk.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Ice";
    size = 20;
  };
  gtk = {
    enable = true;
    iconTheme = {
      package = pkgs.catppuccin-papirus-folders.override {
        flavor = "macchiato";
        accent = "blue";
      };
      name = "Papirus-Dark";
    };
    theme = {
      name = "catppuccin-macchiato-blue-standard+default";
      package = pkgs.catppuccin-gtk.override {
        size = "standard";
        accents = [ "blue" ];
        variant = "macchiato";
      };
    };
    gtk2.extraConfig = ''
      gtk-application-prefer-dark-theme = true;
    '';
    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = true;
    };
    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = true;
    };
  };
}
