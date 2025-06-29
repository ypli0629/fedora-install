mkdir themes

cd themes
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
cd WhiteSur-gtk-theme
# git clone https://github.com/vinceliuice/MacTahoe-gtk-theme.git
# cd MacTahoe-gtk-theme
./install.sh
cd ..

# git clone https://github.com/vinceliuice/grub2-themes.git
# cd grub2-themes
# sudo ./install.sh -t vimix -s 2k -b
# cd ..

git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
cd WhiteSur-icon-theme
# git clone https://github.com/vinceliuice/MacTahoe-icon-theme.git
# cd MacTahoe-icon-theme
./install.sh -b
cd ..

git clone https://github.com/vinceliuice/WhiteSur-wallpapers.git
cd WhiteSur-wallpapers
./install-wallpapers.sh
sudo ./install-gnome-backgrounds.sh
cd ..

# git clone https://github.com/vinceliuice/WhiteSur-cursors.git
# cd WhiteSur-cursors
# sudo ./install.sh
# cd ..
