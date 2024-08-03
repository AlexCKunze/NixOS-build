{ pkgs, ... }: {

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [

    #ESSENTIAL PACKAGES
    wget git curl python3 flatpak
    neovim unzip zip tmux lm_sensors pfetch baobab gnome.gnome-disk-utility xclip picom openvpn gcc 
    i3-gaps dmenu alacritty nitrogen rofi redshift

    gnome.seahorse

    #NON ESSENTIAL PACKAGES
    gnome.gucharmap
    qtox
    #keepassxc
    gimp krita
    shotwell
    flameshot
    gnome3.gnome-calculator
    gnome.gnome-system-monitor

    #XFCE PACKAGES
    xfce.ristretto xfce.xfce4-whiskermenu-plugin

    # Normal apps
    wireshark dig yt-dlp 
    virt-manager spice-gtk
    mpd ncmpcpp
    libreoffice
    obs-studio
    arc-theme
    lxappearance
    stellarium
    libratbag piper
    mumble

    #Financial
    monero-gui
    electrum

    #Containerization
    docker-compose

    #Networking
    gnome.networkmanager-openvpn
    tcpdump
    nmap
    syncthing
    traceroute
    openvpn

    #File Stuff
    tldr
    ngrep
    font-awesome
    docker-compose
    distrobox
    nodejs
    fzf
    gnome.file-roller cinnamon.nemo
    lua-language-server

    #i3 Stuff
    i3blocks

    #Fonts
    caladea
    carlito

    #Web Dev
    hugo
  ];
}
