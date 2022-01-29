#!/usr/bin/env bash



echo -e "Assimilating to my liking....."

cp -r .config/* ~/.config/ > /dev/null 
echo -e ".......................\n"
cp -r .bashrc ~/ > /dev/null
echo -e "****...................\n"
cp -r .tmux.conf ~/ > /dev/null
echo -e "**********.............\n"
cp -r .local/share/nvim ~/.local/share/ > /dev/null
echo -e "**************.........\n"
cp -r .local/share/fonts/ ~/.local/share/ > /dev/null
echo -e "*******************....\n"
cp -r .alacritty.yml ~/ > /dev/null
echo -e "********************...\n"
mkdir -p ~/Pictures/wallpaper && cd ~/Pictures/wallpaper/ > /dev/null
wget https://cdn.discordapp.com/attachments/658513471813713950/936805613630017546/knight.jpg > /dev/null

fc-cache -fv > /dev/null
echo -e "***********************\n"
echo -e " "
echo -e "ASSIMILATION HAS COMPLETED"

cat gigachad.txt

source ~/.bashrc

echo -e "Within the extra directory located in ~/Documents/Nixos-build/extra"
echo -e "is my NixOS configuration file, I would recommend adding whatever you"
echo -e "want to you yours."
echo -e "To install nerdtree on neovim just do :PlugInstall > Enter"


