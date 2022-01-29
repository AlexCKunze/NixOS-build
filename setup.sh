#!/usr/bin/env bash

echo "Loading......."
cp -r .config/* ~/.config/ 
cp -r .bashrc ~/
cp -r .tmux.conf ~/
cp -r .local/share/nvim ~/.local/share/
cp -r .local/share/fonts/ ~/.local/share/
source ~/.bashrc
fc-cache -fv
echo "Within the extra directory located in ~/Documents/Nixos-build/temp"
echo "is my NixOS configuration file, I would recommend adding whatever you"
echo "want you yours."
echo "To install nerdtree on neovim just do :PlugInstall > Enter"
