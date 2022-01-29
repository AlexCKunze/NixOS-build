#!/usr/bin/env bash



echo "Assimilating to my liking....."
cp -r .config/* ~/.config/ 
cp -r .bashrc ~/
cp -r .tmux.conf ~/
cp -r .local/share/nvim ~/.local/share/
cp -r .local/share/fonts/ ~/.local/share/
cp -r .alacritty.yml ~/

source ~/.bashrc
fc-cache -fv

cat gigachad.txt

echo "Within the extra directory located in ~/Documents/Nixos-build/temp"
echo "is my NixOS configuration file, I would recommend adding whatever you"
echo "want you yours."
echo "To install nerdtree on neovim just do :PlugInstall > Enter"


