# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "Arugala"; # Define your hostname.
  networking.networkmanager.enable = true;  # Enables wireless support via wpa_supplicant.

  # Set your time zone.
  time.timeZone = "America/Chicago";

  # The global useDHCP flag is deprecated, therefore explicitly set to false here.
  # Per-interface useDHCP will be mandatory in the future, so this generated config
  # replicates the default behaviour.
  networking.useDHCP = false;
  # networking.interfaces.enp3s0.useDHCP = true;
  # networking.interfaces.wlp4s0.useDHCP = true;

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  # i18n.defaultLocale = "en_US.UTF-8";
  # console = {
  #   font = "Lat2-Terminus16";
  #   keyMap = "us";
  # };

  # Xfce + i3-gaps.
  services.xserver.enable = true;
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.desktopManager.xfce.enable = true;

  # Lightdm Configuartion
  services.xserver.displayManager.lightdm.background = /root/wallpaper/storm.jpg;
  services.xserver.displayManager.lightdm.greeters.gtk.theme.name = "Arc-Dark";
  services.xserver.displayManager.lightdm.greeters.gtk.iconTheme.name = "Sardi-Mono-Colora"; 

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
    extraGroups = [ "wheel" "networkmanager" "libvirtd" "ratbagd" "wireshark" "disk" "docker" ]; # Enable ‘sudo’ for the user.
  };

  # programs.fish.enable = true;
  # users.users.sarcasticdream.shell = pkgs.fish;

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
    wget git curl python3 flatpak
    neovim unzip zip tmux lm_sensors pfetch geany baobab gnome.gnome-disk-utility xclip picom openvpn gcc 
    i3-gaps dmenu alacritty nitrogen rofi
    #etcher to the right of gnome.gucharmap
    gnome.gucharmap
    rocm-opencl-runtime rocminfo
    qtox
    keepassxc bitwarden
    gimp krita
    lyrebird #audacity | use flatpak and block internet access
    shotwell
    flameshot
    gnome3.gnome-calculator
    gnome.file-roller
    xfce.ristretto xfce.xfce4-whiskermenu-plugin
    wireshark nmap dig yt-dlp gnome.networkmanager-openvpn
    virt-manager spice-gtk
    mpd ncmpcpp
    libreoffice
    obs-studio
    celluloid #vlc
    blender 
    arc-theme
    lxappearance
    stellarium
    libratbag piper
  ];

 
  virtualisation.libvirtd.enable = true;
  virtualisation.docker.enable = true;
  programs.dconf.enable = true;
  services.flatpak.enable = true;
  programs.wireshark.enable = true;
  # programs.steam.enable = true; #Currently using flatpak Steam

 
  xdg.portal = {
  enable = true;
  gtkUsePortal = true;
  extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };


  hardware.opengl.driSupport32Bit = true;
  hardware.opengl.extraPackages32 = with pkgs.pkgsi686Linux; [ libva ];
  hardware.pulseaudio.support32Bit = true;

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

 

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ 25565 ];
  # networking.firewall.allowedUDPPorts = [ 25565 ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "21.05"; # Did you read the comment?

}

