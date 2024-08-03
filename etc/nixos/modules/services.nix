
{ pkgs, ... }: {

  # Configure keymap in X11
  services.xserver.xkb.layout = "us";
  # services.xserver.xkbOptions = "eurosign:e";

  # Enable CUPS to print documents.
  services.printing.enable = true;
  services.printing.drivers = [ pkgs.canon-cups-ufr2 ];

  # services.monero.enable = true;

  services.flatpak.enable = true;
  services.gnome.gnome-keyring.enable = true;

  services.ratbagd.enable = true;

  xdg.portal = {
      enable = true;
      #gtkUsePortal = true;
      #extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };

  programs.dconf.enable = true;

  nix.gc = {
	automatic = true;
	dates = "weekly";
	options = "--delete-older-than 7d";
  };

}
