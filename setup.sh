#!/usr/bin/env bash


echo -e "*********************************************************************\n"


echo -e "Assimilating to my liking....."

cp -r .config/* ~/.config/ > /dev/null 
cp -r .bashrc ~/ > /dev/null
cp -r .tmux.conf ~/ > /dev/null
cp -r .local/share/nvim ~/.local/share/ > /dev/null
cp -r .local/share/fonts/ ~/.local/share/ > /dev/null
cp -r .alacritty.yml ~/ > /dev/null


cat gigachad.txt

mkdir -p ~/Pictures/wallpaper && cd ~/Pictures/wallpaper/ > /dev/null
wget -q https://cdn.discordapp.com/attachments/658513471813713950/936805613630017546/knight.jpg

fc-cache -fv > /dev/null
echo -e " "
echo -e "ASSIMILATION HAS COMPLETED"


source ~/.bashrc

echo -e "Within the extra directory located in ~/Documents/Nixos-build/extra"
echo -e "is my NixOS configuration file, I would recommend adding whatever you"
echo -e "want to you yours."
echo -e "To install nerdtree on neovim just do :PlugInstall > Enter"


echo -e "*********************************************************************"
