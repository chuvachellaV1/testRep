
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
yay -S nvidia-open nvidia-utils lib32-nvidia-utils nvidia-settings
#https://github.com/korvahannu/arch-nvidia-drivers-installation-guide/tree/a46d7f0a0c2bfbda9469b51b9b2b93323e69cf6e
#sudo pacman -S --needed networkmanager nvidia-dkms nvidia-utils lib32-nvidia-utils nvidia-settings pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber ttf-liberation ttf-jetbrains-mono-nerd
#sudo pacman -S --needed kitty alacritty zsh  
