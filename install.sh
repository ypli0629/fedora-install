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
sudo rpm-ostree install autojump fcitx5-chinese-addons fcitx5-autostart golang neovim nodejs pnpm yarnpkg rustup zsh flameshot wireshark -y

# gnome
for i in $(seq 1 9); do
	gsettings set org.gnome.shell.keybindings switch-to-application-${i} '[]'
	gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-${i} "['<Shift><Super>"${i}"']"
	gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-${i} "['<Super>"${i}"']"
done

gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['<Super>f']"
gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"
gsettings set org.gnome.shell.keybindings toggle-application-view "['<Shift><Super>d']"

gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'flameshot'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command 'flameshot gui'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Alt>F1'

gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ name 'gnome-terminal'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ command 'gnome-terminal'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding '<Super>Return'

# nvim
git clone https://github.com/ypli0629/astronvim_config.git ~/.config/nvim

# dir
mkdir -p ~/Desktop/source
mkdir -p ~/Desktop/work
mkdir -p ~/Desktop/caffe
mkdir -p ~/Desktop/learn

# git
git config --global user.email "liyapeng0629@gmail.com"
git config --global user.name "ypli0629"
git config --global credential.helper store
