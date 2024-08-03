{ ... }: {

# Lightdm Configuartion
    services.xserver.displayManager.lightdm = {
        background = /root/wallpaper/storm.jpg;
        greeters.gtk.theme.name = "Arc-Dark";
        greeters.gtk.iconTheme.name = "Sardi-Mono-Colora"; 
        enable = true;
    };

# Xfce + i3-gaps.
    services.xserver = {
        enable = true;
        desktopManager.xfce.enable = true;
#displayManager.startx.enable = true;
#windowManager.dwm.enable = true;
    };

}
