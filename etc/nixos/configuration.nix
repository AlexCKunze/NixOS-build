
{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking = {
      hostName = "Arugala"; # Define your hostname.
      networkmanager.enable = true;  # Enables wireless support via wpa_supplicant.
      useDHCP = false;
  };

  # Set your time zone.
  time.timeZone = "America/Chicago";


  # Xfce + i3-gaps.
  services.xserver = {
      enable = true;
      displayManager.lightdm.enable = true;
      desktopManager.xfce.enable = true;
      #displayManager.startx.enable = true;
      #windowManager.dwm.enable = true;
  };


  #nixpkgs.overlays = [
  #  (final: prev: {
  #      dwm = prev.dwm.overrideAttrs (old: {src = /home/sarcasticdream/Documents/dwm-nixos/dwm ;});
  #    })
  #];


  # Lightdm Configuartion
  services.xserver.displayManager.lightdm = {
      background = /root/wallpaper/storm.jpg;
      greeters.gtk.theme.name = "Arc-Dark";
      greeters.gtk.iconTheme.name = "Sardi-Mono-Colora"; 
  };

  # Configure keymap in X11
  services.xserver.layout = "us";
  # services.xserver.xkbOptions = "eurosign:e";

  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
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

  nix.gc = {
	automatic = true;
	dates = "weekly";
	options = "--delete-older-than 7d";
  };


  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [

    #ESSENTIAL PACKAGES
    wget git curl python3 flatpak
    neovim unzip zip tmux lm_sensors pfetch baobab gnome.gnome-disk-utility xclip picom openvpn gcc 
    i3-gaps dmenu alacritty nitrogen rofi

    #NON ESSENTIAL PACKAGES
    gnome.gucharmap
    rocm-opencl-runtime rocminfo
    qtox
    keepassxc bitwarden
    gimp krita
    lyrebird
    shotwell
    flameshot
    gnome3.gnome-calculator
    gnome.file-roller cinnamon.nemo

    #XFCE PACKAGES
    xfce.ristretto xfce.xfce4-whiskermenu-plugin
    wireshark nmap dig yt-dlp gnome.networkmanager-openvpn
    virt-manager spice-gtk
    mpd ncmpcpp
    libreoffice
    obs-studio
    celluloid
    blender 
    arc-theme
    lxappearance
    stellarium
    libratbag piper

  ];

 
  virtualisation = {
      libvirtd.enable = true;
      docker.enable = true;
  };
  programs.dconf.enable = true;
  services.flatpak.enable = true;
  programs.wireshark.enable = true;

 
  xdg.portal = {
      enable = true;
      gtkUsePortal = true;
      extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };

  hardware = {
      opengl.driSupport32Bit = true;
      opengl.extraPackages32 = with pkgs.pkgsi686Linux; [ libva ];
      #pulseaudio.support32Bit = true;
  };

  services.ratbagd.enable = true;
  services.xserver.libinput.mouse.middleEmulation = false;

  services.xserver.libinput.enable = true;
  services.xserver.config = ''
    Section "InputClass"
      Identifier "mouse accel"
      Driver "libinput"
      MatchIsPointer "on"
      Option "AccelProfile" "flat"
      Option "AccelSpeed" "0"
    EndSection
  ''; 

  # Open ports in the firewall.
  networking.firewall = {
      allowedTCPPorts = [ 8384 32222 42069 ];
      allowedUDPPorts = [ 8384 32222 42069 ];
      #enable = false;
  };

  system.stateVersion = "21.05"; # Don't Change

}

