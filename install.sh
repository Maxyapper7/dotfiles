#!/bin/sh

# Install paru
sudo pacman -S --noconfirm --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm
cd ..
rm -rf paru

# Enable Parallel Downloads
echo "[options]" | sudo tee -a /etc/pacman.conf
echo "ParallelDownloads = 5" | sudo tee -a /etc/pacman.conf

# Install normal Packages
sudo pacman -S --noconfirm -< pacman-pkg.txt

# Install AUR packages
paru -S --noconfirm -< aur-pkg.txt

# Hyprlink dotfiles Using Stow
stow . 

# Start Libvirtd Service
sudo systemctl enable libvirtd.service

# Add to Libvirt group
sudo usermod -a -G libvirt $(whoami)

# Git editor 
git config --global core.editor "nvim"
