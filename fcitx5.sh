#!/bin/bash
sudo dnf install fcitx5-chinese-addons fcitx5-autostart fcitx5-rime librime-lua -y
git clone https://github.com/Mintimate/oh-my-rime $HOME/.local/share/fcitx5/rime

git clone https://github.com/witt-bit/fcitx5-theme-mint.git
sh fcitx5-theme-mint/install.sh
