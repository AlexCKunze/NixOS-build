#!/usr/bin/env bash

echo "Loading......."
cp -r .config/* ~/.config/ 
cp -r .bashrc ~/
cp -r .tmux.conf ~/
cp  -r.local/share/nvim ~/.local/share/ 
echo "Within the extra directory located in ~/Documents/Nixos-build/temp"
echo "is my NixOS configuration file, I would recommend adding whatever you"
echo "want you yours."
