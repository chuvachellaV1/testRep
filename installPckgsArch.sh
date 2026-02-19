#!/bin/bash
sudo systemctl enable --now NetworkManager
if ping -c google.com $> /dev/null; then
  echo "There is network  connection."
else 
  echo "NO INTERNET"
  exit 1
fi
sudo pacman -Syu
mkdir -p /home/$USER/customisation
INSTALLATION_PATH="/home/$USER/customisation"
sudo pacman -S --needed networkmanager nvidia-dkms nvidia-utils lib32-nvidia-utils nvidia-settings pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber ttf-liberation ttf-jetbrains-mono-nerd
sudo pacman -S --needed kitty alacritty zsh  
