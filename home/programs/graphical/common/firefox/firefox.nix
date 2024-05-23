{
  pkgs,
  config,
  ...
}: {
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
    };
    profiles.${config.home.username} = {
      id = 0;
      name = "${config.home.username}";
      search = {
        default = "Google";
        privateDefault = "DuckDuckGo";
        force = true;
      };
      settings = {
      };
    };
  };
}
