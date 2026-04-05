{ config, pkgs, ... }:

{
  home.username = "wagner";
  home.homeDirectory = "/home/wagner";

  # importante
  programs.home-manager.enable = true;

  # ✅ AQUI entra o que você queria
  dconf.settings = {
    "org/gnome/shell" = {
      enabled-extensions = [ "dash-to-dock@micxgx.gmail.com" "pop-shell@system76.com" ];
    };
    "org/gnome/shell/extensions/dash-to-dock" = {
      dock-position = "BOTTOM";
      extend-height = false;
      dock-fixed = false;
      autohide = true;
      transparency-mode = "DYNAMIC";
      dash-max-icon-size = 48;
    };
    "org/gnome/shell/extensions/pop-shell" = {
      tile-by-default = true;
      smart-gaps = true;
    };
  };

  home.stateVersion = "25.11";
}
