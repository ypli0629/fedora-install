mkdir -p ~/Desktop/source
mkdir -p ~/Desktop/work
mkdir -p ~/Desktop/caffe
mkdir -p ~/Desktop/learn

# git
git config --global user.email "liyapeng0629@gmail.com"
git config --global user.name "ypli0629"
git config --global credential.helper store

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak remote-modify flathub --url=https://mirror.sjtu.edu.cn/flathub

git clone https://github.com/ypli0629/astronvim_config.git ~/.config/nvim

sudo rpm-ostree install gnome-shell-extension-appindicator \ 
      gnome-shell-extension-auto-move-windows \ 
      gnome-shell-extension-blur-my-shell \
      gnome-shell-extension-dash-to-dock \
      gnome-shell-extension-netspeed \
      gnome-shell-extension-unite \
      gnome-shell-extension-user-theme \
      gnome-tweaks \

sudo rpm-ostree install autojump fcitx5-chinese-addons \ 
      go neovim nodejs pnpm rustup zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
tee -a ~/.zshrc <<-'EOF'
	alias szsh="source ~/.zshrc"
	alias nzsh="nvim ~/.zshrc"
	alias pon="export http_proxy=http://127.0.0.1:7890; export https_proxy=http://127.0.0.1:7890; export all_proxy=socks5://127.0.0.1:7890"
	alias poff="unset http_proxy; unset https_proxy; unset all_proxy"

	export PATH=~/.local/bin:~/go/bin:~/.local/bin:$PATH
	___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
EOF
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https: