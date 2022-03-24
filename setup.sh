#!/usr/bin/env bash

fullFunc() {
    echo -e "*********************************************************************\n"
    cp -r .config/* ~/.config/ > /dev/null 
    cp -r .bashrc ~/ > /dev/null
    cp -r .tmux.conf ~/ > /dev/null
    cp -r .local/share/nvim ~/.local/share/ > /dev/null
    cp -r .local/share/fonts/ ~/.local/share/ > /dev/null
    cp -r .alacritty.yml ~/ > /dev/null
    echo -e "Assimilating to my liking....."
    cat gigachad.txt

    mkdir -p ~/Pictures/wallpaper && cd ~/Pictures/wallpaper/ > /dev/null
    wget -q https://cdn.discordapp.com/attachments/658513471813713950/956399495317438464/florian-van-duyn-Dm-qxdynoEc-unsplash.jpg 
     
    fc-cache -fv > /dev/null
    echo -e " "
    echo -e "ASSIMILATION HAS COMPLETED"


    source ~/.bashrc

    echo -e "Within the extra directory located in ~/Nixos-build/extra"
    echo -e "is my NixOS configuration file, I would recommend adding whatever you"
    echo -e "want to you yours."
    echo -e "To install nerdtree on neovim just do :PlugInstall > Enter"


    echo -e "*********************************************************************"
}



messages() {
cat << EOF
**************************
Neovim Configuration (1)
Tmux Configuration (2)
Alacritty Configuration (3)
Picom Configruation (4)
**************************
EOF
}

echo "Would you like to do the full setup? (yes or no)" 
read -p "--> " response

if [ "$response" == "yes" ]
then
    fullFunc
elif [ "$response" == "no" ]
then
    messages
    read -p "--> " myVar
    if [ "$myVar" == "1" ]
    then
        cp -r .config/nvim* ~/.config/ > /dev/null 
        cp -r .local/share/nvim ~/.local/share/ > /dev/null
        echo "++Neovim Configuration Installed++"
    elif [ "$myVar" == "2" ]
    then
        cp -r .tmux.conf ~/ > /dev/null
        echo "++Tmux Configuration Installed++"
    elif [ "$myVar" == "3" ]
    then
        cp -r .alacritty.yml ~/ > /dev/null
        echo "++Alacritty Configuration Installed++"
    elif [ "$myVar" == "4" ]
    then
        cp .config/picom/picom.conf ~/.config/ > /dev/null 
        echo "++Picom Configuration Installed++"
    fi
fi

