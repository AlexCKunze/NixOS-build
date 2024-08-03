
{ config, pkgs, ... }: {

  imports =
    [ 
      ./hardware-configuration.nix
      ./modules/default.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking = {
      hostName = "Arugala"; 
      networkmanager.enable = true;  
      useDHCP = false;
  };

  time.timeZone = "America/Chicago";

  sound.enable = true;

  users.users.sarcasticdream = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "libvirtd" "ratbagd" "wireshark" "disk" "docker" ];
    shell = pkgs.zsh;
  };

  programs.zsh = {
      enable = true;
      syntaxHighlighting.enable = true;
      enableBashCompletion = true;
  };

  nixpkgs.config = {
    allowUnfree = true;
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  programs.wireshark.enable = true;

  hardware = {
      pulseaudio.enable = true;
      opengl = {
          driSupport32Bit = true;
          extraPackages32 = with pkgs.pkgsi686Linux; [ libva ];
          extraPackages = with pkgs; [
              rocmPackages.clr.icd
          ];
      };
  };

  powerManagement = {
    enable = true;
    cpuFreqGovernor = "powersave";
  };

  system.stateVersion = "21.05"; # Don't Change

}

