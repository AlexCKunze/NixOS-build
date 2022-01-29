#!/usr/bin/env bash

echo "Loading......."
mv -r .config/* ~/.config
mv .bashrc ~/
mv .tmux.conf ~/
mv .local/share/nvim ~/.local/share/ || mkdir ~/.local/share/ ; mv .local/share/nvim ~/.local/share/
echo "Done...."
echo "Within the extra directory located in ~/Documents/Nixos-build/temp"
echo "is my NixOS configuration file, I would recommend adding whatever you"
echo "want you yours."
