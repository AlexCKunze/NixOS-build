#!/usr/bin/env bash

echo "Loading......."
mv .config/* ~/.config || echo "Please Delete your current i3 folder ~/.config/i3"
mv .bashrc ~/ || echo "You already have a .bashrc, so take what you like from it and shove it in your own bashrc"
mv .tmux.conf ~/ || echo "You already have a ~/.tmux.conf, so shove what you like in the one in here into your own"
mv .local/share/nvim ~/.local/share/ || mkdir ~/.local/share/ ; mv .local/share/nvim ~/.local/share/ || echo "Looks like you already have an nvim config ~/.local/share/nvim"
echo "Within the extra directory located in ~/Documents/Nixos-build/temp"
echo "is my NixOS configuration file, I would recommend adding whatever you"
echo "want you yours."
