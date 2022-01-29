#!/usr/bin/env bash



echo "Assimilating to my liking....."

cp -r .config/* ~/.config/ > /dev/null 
cp -r .bashrc ~/ > /dev/null
cp -r .tmux.conf ~/ > /dev/null
cp -r .local/share/nvim ~/.local/share/ > /dev/null
cp -r .local/share/fonts/ ~/.local/share/ > /dev/null
cp -r .alacritty.yml ~/ > /dev/null

fc-cache -fv > /dev/null

cat gigachad.txt

source ~/.bashrc

echo "Within the extra directory located in ~/Documents/Nixos-build/extra"
echo "is my NixOS configuration file, I would recommend adding whatever you"
echo "want to you yours."
echo "To install nerdtree on neovim just do :PlugInstall > Enter"


