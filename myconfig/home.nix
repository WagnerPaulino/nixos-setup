{ config, pkgs, ... }:

{
  home.username = "wagner";
  home.homeDirectory = "/home/wagner";

  # importante
  programs.home-manager.enable = true;

  # ✅ AQUI entra o que você queria
  dconf.settings = {
    "org/gnome/shell" = {
      enabled-extensions = [ "dash-to-dock@micxgx.gmail.com" ];
    };

    "org/gnome/shell/extensions/dash-to-dock" = {
      dock-position = "BOTTOM";
      extend-height = false;
      dock-fixed = false;
      autohide = true;
      transparency-mode = "DYNAMIC";
      dash-max-icon-size = 48;
    };
  };

  home.stateVersion = "25.11";
}
