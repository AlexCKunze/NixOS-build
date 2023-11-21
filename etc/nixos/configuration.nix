{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.initrd.luks.devices = {
    root = { 
      device = "/dev/sda2";
      preLVM = true;
    };
  };

  networking.hostName = "thinkchad"; # Define your hostname.

  time.timeZone = "America/Chicago";

  networking.useDHCP = false;
  networking.networkmanager.enable = true;

  services.xserver = {
          enable = true;
          displayManager.lightdm = {
  #        displayManager.gdm = {
  #                wayland = true;
                  enable = true;
              };
          desktopManager.xfce.enable = true;
      };
  #programs.hyprland = {
  #        enable = true;
  #        xwayland.enable = true;
  #    };
  #services.cinnamon.apps.enable = false;
  #services.xserver.displayManager.startx.enable = true;
  #services.xserver.windowManager.dwm.enable = true;
  #nixpkgs.overlays = [
  #  (final: prev: {
  #      dwm = prev.dwm.overrideAttrs (old: {src = /home/alex/dwm ;});
  #    })
  #];

  services.xserver.displayManager.lightdm = {
      background = /root/wallpaper/bg.jpg;
      greeters.gtk.theme.name = "Plata-Noir";
      greeters.gtk.iconTheme.name = "Mint-Y-Dark-Blue";
  };

  # services.printing.enable = true;

  sound.enable = true;
  hardware.pulseaudio.enable = true;
  programs.light.enable = true;

  services.xserver.libinput.enable = true;

  users.users.alex = {
    isNormalUser = true;
    extraGroups = [ "wheel" "video" "audio" "disk" "networkmanager" "wireshark" "libvirtd" "docker" ]; # Enable ‘sudo’ for the user.
    home = "/home/alex";
  };

  nixpkgs.config = {
    allowUnfree = true;
  };

  nix.gc = {
	automatic = true;
	dates = "weekly";
	options = "--delete-older-than 7d";
	};

  environment.systemPackages = with pkgs; [
    wget neovim alacritty git curl tmux unzip zip 
    #gnome.file-roller python3
    arc-theme plata-theme
    brave qtox
    i3-gaps
    libreoffice gimp
    xfce.xfce4-whiskermenu-plugin
    #celluloid
    xfce.thunar
    nitrogen
    mpd ncmpcpp
    bitwarden veracrypt
    obs-studio
    #(pkgs.wrapOBS {
    #    plugins = with pkgs.obs-studio-plugins; [
    #      wlrobs
    #    ];
    #})
    wireshark nmap dig
    #gnome3.gnome-disk-utility gnome3.gnome-system-monitor
    lm_sensors
    virt-manager
    flameshot
    lxappearance
    rofi
    #wofi
    #xdg-desktop-portal-hyprland
    #(waybar.overrideAttrs (oldAttrs: {
    #    mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
    #    }))

  ];

  virtualisation = {
      libvirtd.enable = true;
      docker.enable = true;
      };

  programs.dconf.enable = true;
  services.flatpak.enable = true;
  programs.wireshark.enable = true;

   programs.zsh = {
      enable = true;
      syntaxHighlighting.enable = true;
  };
  users.users.alex.shell = pkgs.zsh;

  xdg.portal = {
      enable = true;
      gtkUsePortal = true;
      extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };

  hardware.opengl.driSupport32Bit = true;
  hardware.opengl.extraPackages32 = with pkgs.pkgsi686Linux; [ libva ];
  hardware.pulseaudio.support32Bit = true;
  hardware.opengl.enable = true;

  # List services that you want to enable:

  # Power Saving
  services.auto-cpufreq.enable = true;
  services.auto-cpufreq.settings = {
      battery = {
          governor = "powersave";
          turbo = "never";
      };
      charger = {
          governor = "performance";
          turbo = "auto";
      };
  };


  services.tlp = {
      enable = true;
      settings = {
        CPU_SCALING_GOVERNOR_ON_AC = "performance";
        CPU_SCALING_GOVERNOR_ON_BAT = "powersave";

        CPU_ENERGY_PERF_POLICY_ON_BAT = "power";
        CPU_ENERGY_PERF_POLICY_ON_AC = "performance";

        CPU_MIN_PERF_ON_AC = 0;
        CPU_MAX_PERF_ON_AC = 100;
        CPU_MIN_PERF_ON_BAT = 0;
        CPU_MAX_PERF_ON_BAT = 20;
      };
  };

  services.thermald.enable = true;

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  networking.firewall = {
          allowedUDPPorts = [ 8384 ];
          allowedTCPPorts = [ 8384 ];
      };
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  system.stateVersion = "20.09"; # Don't Change Value

}

