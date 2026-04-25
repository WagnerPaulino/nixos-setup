{ pkgs, ... }:

{

  imports =
  [ # Include the results of the hardware scan.
    ./android-config.nix
    ./waydroid-config.nix
  ];


  # Allow unfree software (like VS Code or Discord)
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # System Tools
    git
    vim
    wget
    
    # Development Environment
    python3
    docker
    vscode
    jetbrains.idea-oss
    javaPackages.compiler.openjdk25
    maven
    google-chrome
    adwaita-icon-theme
    wpsoffice
    nodejs_24
    virt-manager
    virt-viewer
    spice
    spice-gtk
    gnomeExtensions.dash-to-dock
    gnomeExtensions.pop-shell
    distrobox
    kdePackages.kdenlive
    ffmpeg-full
    mediainfo
  ];

  environment.variables = {
    CHROME_EXECUTABLE = "${pkgs.google-chrome}";
    JAVA_HOME = "${pkgs.javaPackages.compiler.openjdk25}";
  };


  # Enable background services for dev
  virtualisation.docker.enable = true;
  virtualisation.libvirtd.enable = true;
  programs.virt-manager.enable = true;
}
