{
  programs.k9s = {
    enable = true;
    settings = {
      k9s = {
        ui = {
          skin = "catppuccin-macchiato-transparent";
        };
      };
    };
    skins = {
      catppuccin-macchiato-transparent = {
        k9s = {
          body = {
            fgColor = "#cad3f5";
            bgColor = "default";
            logoColor = "#c6a0f6";
          };
          prompt = {
            fgColor = "#cad3f5";
            bgColor = "default";
            suggestColor = "#8aadf4";
          };
          help = {
            bgColor = "default";
            fgColor = "#cad3f5";
            sectionColor = "#a6da95";
            keyColor = "#8aadf4";
            numKeyColor = "#ee99a0";
          };
          frame = {
            title = {
              fgColor = "#8bd5ca";
              bgColor = "default";
              highlightColor = "#f5bde6";
              counterColor = "#eed49f";
              filterColor = "#a6da95";
            };
            border = {
              fgColor = "#c6a0f6";
              focusColor = "#b7bdf8";
            };
            menu = {
              fgColor = "#cad3f5";
              keyColor = "#8aadf4";
              numKeyColor = "#ee99a0";
            };
            crumbs = {
              fgColor = "#24273a";
              bgColor = "default";
              activeColor = "#f0c6c6";
            };
            status = {
              newColor = "#8aadf4";
              modifyColor = "#b7bdf8";
              addColor = "#a6da95";
              pendingColor = "#f5a97f";
              errorColor = "#ed8796";
              highlightColor = "#91d7e3";
              killColor = "#c6a0f6";
              completedColor = "#6e738d";
            };
          };
          info = {
            fgColor = "#f5a97f";
            sectionColor = "#cad3f5";
          };
          views = {
            table = {
              fgColor = "#cad3f5";
              bgColor = "default";
              cursorFgColor = "#363a4f";
              cursorBgColor = "#494d64";
              markColor = "#f4dbd6";
              header = {
                fgColor = "#eed49f";
                bgColor = "default";
                sorterColor = "#91d7e3";
              };
            };
            xray = {
              fgColor = "#cad3f5";
              bgColor = "default";
              cursorColor = "#494d64";
              cursorTextColor = "#24273a";
              graphicColor = "#f5bde6";
            };
            charts = {
              bgColor = "default";
              chartBgColor = "default";
              dialBgColor = "default";
              defaultDialColors = [
                "#a6da95"
                "#ed8796"
              ];
              defaultChartColors = [
                "#a6da95"
                "#ed8796"
              ];
            };
            resourceColors = {
              cpu = [
                "#c6a0f6"
                "#8aadf4"
              ];
              mem = [
                "#eed49f"
                "#f5a97f"
              ];
            };
          };
        };
        yaml = {
          keyColor = "#8aadf4";
          valueColor = "#cad3f5";
          colonColor = "#a5adcb";
        };
        logs = {
          fgColor = "#cad3f5";
          bgColor = "default";
          indicator = {
            fgColor = "#b7bdf8";
            bgColor = "default";
            toggleOnColor = "#a6da95";
            toggleOffColor = "#a5adcb";
          };
        };
        dialog = {
          fgColor = "#eed49f";
          bgColor = "default";
          buttonFgColor = "#24273a";
          buttonBgColor = "default";
          buttonFocusFgColor = "#24273a";
          buttonFocusBgColor = "#f5bde6";
          labelFgColor = "#f4dbd6";
          fieldFgColor = "#cad3f5";
        };
      };
    };
  };
}
