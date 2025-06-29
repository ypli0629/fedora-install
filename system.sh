#!/bin/bash

# upgrade
sudo dnf upgrade

# flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo --system
sudo flatpak remote-modify flathub --url=https://mirror.sjtu.edu.cn/flathub --system

# gnome-shell
# sudo dnf install gnome-shell-extension-appindicator \
#       gnome-shell-extension-auto-move-windows \
#       gnome-shell-extension-blur-my-shell \
#       gnome-shell-extension-dash-to-dock \
#       gnome-shell-extension-netspeed \
#       gnome-shell-extension-unite \
#       gnome-shell-extension-user-theme \
#       gnome-tweaks \
#       gnome-shell-extension-workspace-indicator \
#       -y

# soft
sudo dnf remove google-noto-sans-cjk-vf-fonts
sudo dnf install @c-development @development-tools google-noto-serif-cjk-fonts autojump-zsh golang neovim nodejs pnpm yarnpkg rustup zsh flameshot wireshark -y
