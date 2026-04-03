{ ... }:

{
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;
  
  # Firewall settings
  # networking.firewall.allowedTCPPorts = [ 80 443 8080 ];
}
