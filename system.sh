#!/bin/bash

# upgrade
sudo rpm-ostree upgrade

# flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak remote-modify flathub --url=https://mirror.sjtu.edu.cn/flathub

# gnome-shell
sudo rpm-ostree install gnome-shell-extension-appindicator \
      gnome-shell-extension-auto-move-windows \
      gnome-shell-extension-blur-my-shell \
      gnome-shell-extension-dash-to-dock \
      gnome-shell-extension-netspeed \
      gnome-shell-extension-unite \
      gnome-shell-extension-user-theme \
      gnome-tweaks \
      gnome-shell-extension-workspace-indicator \
      gnome-shell-theme-yaru \
      gnome-shell-theme-flat-remix \
      -y

# soft
sudo rpm-ostree install autojump-zsh fcitx5-chinese-addons fcitx5-autostart golang neovim nodejs pnpm yarnpkg rustup zsh flameshot wireshark -y
