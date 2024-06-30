{ pkgs, ... }: {
  qt.style.catppuccin = {
    enable = true;
    accent = "blue";
    apply = true;
  };
  home.pointerCursor = {
    gtk.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
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
      name = "Catppuccin-Macchiato-Compact-Blue-Dark";
      package = pkgs.catppuccin-gtk.override {
        accents = [ "blue" ];
        size = "compact";
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
  home.sessionVariables.GTK_THEME = gtk.theme.name;
}
