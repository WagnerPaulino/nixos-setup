{ pkgs, ... }:

{
  users.users.wagner = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "docker" "libvirtd"];
  };
}
