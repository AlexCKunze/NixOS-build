#!/usr/bin/env bash

echo "Loading......."
mkdir -p ~/Documents/NixOS-build/temp
cp -r .NixOS-build/temp
cd .NixOS-build/temp
mv -r .config/* ~/.config
mv .bashrc ~/
mv .tmux.conf ~/
mv .local/share/nvim ~/.local/share/nvim
echo "Done...."
echo "Within the extra directory located in ~/Documents/Nixos-build/temp"
echo "is my NixOS configuration file, I would recommend adding whatever you"
echo "want you yours."
