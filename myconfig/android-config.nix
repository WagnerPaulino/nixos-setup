{ config, pkgs, ... }:

{
  nixpkgs.config.android_sdk.accept_license = true;

  # Install Android Studio
  environment.systemPackages = with pkgs; [
    android-studio
    flutter
    android-tools
    usbutils
  ];
  programs.adb.enable = true;
  users.users.wagner.extraGroups = [ "adbusers" "kvm" ];
  environment.variables = {
    ANDROID_HOME = "$HOME/Android/Sdk";
    ANDROID_SDK_ROOT = "$HOME/Android/Sdk";
  };
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    stdenv.cc.cc.lib
    zlib
    glibc
    xorg.libX11
    xorg.libXext
    xorg.libXrender
    xorg.libXcomposite
    xorg.libXcursor
    xorg.libXdamage
    xorg.libXi
    xorg.libXtst
    libGL
    nss
    nspr
    expat
    fontconfig
    freetype
    dbus
    udev
    libpulseaudio
    libuuid
    libdrm
  ];
}
