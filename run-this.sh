#!/bin/bash

echo "Hello ! This script will install a few configs and if not installed a few other things. (wait 5s for confirmation or ctrl+c to cancel):"
sleep 5
echo "Starting.."
sudo pacman -S --noconfirm waybar rofi kitty dolphin
echo "Checking config directories.."
sleep 2
mkdir -p ~/.config/
mkdir -p ~/.config/waybar/
mkdir -p ~/.config/hypr/
mkdir -p ~/.config/hypr/scripts
mkdir -p ~/.config/rofi/
echo "All needed directories are created."
sleep 3
echo "Now all config files will get created."
cp -r ~/easyrice/rofi/config.rasi ~/.config/rofi/
cp -r ~/easyrice/waybar/style.css ~/.config/waybar/
cp -r ~/easyrice/waybar/config.jsonc ~/.config/waybar/
cp -r ~/easyrice/hypr/scripts/unminimize.sh ~/.config/hypr/scripts
cp -r ~/easyrice/hypr/hyprland.conf ~/.config/hypr/
echo "All configs copied!"

