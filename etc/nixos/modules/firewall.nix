{ ... }: {

  # Open ports in the firewall.
  networking.firewall = {
      allowedTCPPorts = [ 445 139 8384 32222 42069 53317 ];
      allowedUDPPorts = [ 8384 32222 42069 53317 ];
      #enable = false;
  };

}
