
{ lib, ... }: {
  imports =
    [ 
      ./packages.nix
      ./virtualisation.nix
      ./firewall.nix
      ./libinput.nix
      ./xfcei3.nix
      ./services.nix
    ];
}
