{ pkgs, config, ... }: {
  imports = [
    inputs.nur.hmModules.nur
  ];
  programs.firefox = {
    enable = true;
    policies = {
      DisableFirefoxStudies = true;
      DisableFormHistory = true;
      DisablePocket = true;
      DisableTelemetry = true;
      DontCheckDefaultBrowser = true;
      FirefoxHome = {
        Pocket = false;
        Snippets = false;
      };
      PasswordManagerEnabled = false;
      UserMessaging = {
        ExtensionRecommendations = false;
        SkipOnboarding = true;
      };
      ExtensionSettings = {
        "ebay@search.mozilla.org".installation_mode = "blocked";
        "amazondotcom@search.mozilla.org".installation_mode = "blocked";
        "bing@search.mozilla.org".installation_mode = "blocked";
        "ddg@search.mozilla.org".installation_mode = "blocked";
        "wikipedia@search.mozilla.org".installation_mode = "blocked";
      };
      profiles.${config.home.username} = {
        id = 0;
        search = {
          default = "Google";
          privateDefault = "DuckDuckGo";
          force = true;
        };
        extensions = with pkgs.nur.repos.rycee.firefox-addons; [
          bitwarden
          ublock-origin
          vimium
        ];
        settings = {
          "accessibility.typeaheadfind.enablesound" = false;
          "accessibility.typeaheadfind.flashBar" = 0;
          "browser.aboutConfig.showWarning" = false;
          "browser.aboutwelcome.enabled" = false;
          "browser.bookmarks.autoExportHTML" = true;
          "browser.bookmarks.showMobileBookmarks" = true;
          "browser.meta_refresh_when_inactive.disabled" = true;
          "browser.newtabpage.activity-stream.default.sites" = "";
          "browser.newtabpage.activity-stream.showSponsored" = false;
          "browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
          "browser.search.hiddenOneOffs" = "Google,Amazon.com,Bing,DuckDuckGo,eBay,Wikipedia (en)";
          "browser.search.suggest.enabled" = false;
          "browser.sessionstore.warnOnQuit" = true;
          "browser.shell.checkDefaultBrowser" = false;
          "browser.ssb.enabled" = true;
          "browser.startup.homepage.abouthome_cache.enabled" = true;
          "browser.startup.page" = 3;
          "browser.urlbar.keepPanelOpenDuringImeComposition" = true;
          "browser.urlbar.suggest.quicksuggest.sponsored" = false;
          "devtools.chrome.enabled" = true;
          "devtools.debugger.remote-enabled" = true;
          "dom.storage.next_gen" = true;
          "dom.forms.autocomplete.formautofill" = true;
          "extensions.htmlaboutaddons.recommendations.enabled" = false;
          "extensions.formautofill.addresses.enabled" = false;
          "extensions.formautofill.creditCards.enabled" = false;
          "general.autoScroll" = false;
          "general.smoothScroll.msdPhysics.enabled" = true;
          "geo.enabled" = false;
          "geo.provider.use_corelocation" = false;
          "geo.provider.use_geoclue" = false;
          "geo.provider.use_gpsd" = false;
          "intl.accept_languages" = "en-US,en";
          "media.eme.enabled" = true;
          "media.videocontrols.picture-in-picture.video-toggle.enabled" = false;
          "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
          "font.name.monospace.x-western" = "MonaspiceKr Nerd Font";
          "font.name.sans-serif.x-western" = "MonaspiceNe Nerd Font";
          "font.name.serif.x-western" = "MonaspiceNe Nerd Font";
          "signon.autofillForms" = false;
        };
        userChrome = builtins.readFile ./chrome/userChrome.css;
      };
    };
  };
}
