#!/bin/bash

sh ./system.sh
sh ./gnome.sh

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
