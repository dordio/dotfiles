#!/bin/bash
# get my dot files and configure stuff


# remove some crap
rm -rf ~/Templates
rm -rf ~/Public


# create folder structure
mkdir ~/ansible
mkdir ~/github
mkdir ~/bin
mkdir ~/.themes
mkdir ~/.icons
mkdir ~/.config/alacritty
mkdir ~/.config/alacritty/themes
mkdir ~/.config/fish
mkdir ~/.config/nvim
mkdir ~/.config/regolith
mkdir ~/.config/regolith/i3
mkdir ~/.config/regolith/i3xrocks
mkdir ~/.config/regolith/i3xrocks/conf.d


# install some stuff
sudo apt install vim nomacs nitrogen mousepad gpick keepassxc gnome-tweaks alacritty htop thunar transmission fonts-firacode neofetch fish -y
 
# install regolith desktop
sudo add-apt-repository ppa:regolith-linux/release
sudo apt install regolith-desktop-complete -y


# install i3-renameworkspaces and download config
sudo apt install liblinux-inotify2-perl -y
curl https://raw.githubusercontent.com/mh21/i3-renameworkspaces/master/i3-renameworkspaces.pl > ~/bin/i3-renameworkspaces.pl
curl https://raw.githubusercontent.com/dordio/regolith/main/.i3workspaceconfig > ~/.i3workspaceconfig


# get stuff from github
curl https://raw.githubusercontent.com/dordio/stuff/master/.vimrc > ~/.vimrc
curl https://raw.githubusercontent.com/dordio/stuff/master/.tmux.conf > ~/.tmux.conf
curl https://raw.githubusercontent.com/dordio/stuff/master/.profile > ~/.profile
curl https://raw.githubusercontent.com/dordio/stuff/master/bin/xmr > ~/bin/xmr
curl https://raw.githubusercontent.com/dordio/stuff/master/bin/upall > ~/bin/upall
curl https://raw.githubusercontent.com/dordio/stuff/master/bin/nitrochange > ~/bin/nitrochange
curl https://raw.githubusercontent.com/dordio/stuff/master/bin/nitro > ~/bin/nitro
curl https://raw.githubusercontent.com/dordio/stuff/master/bin/myip.sh > ~/bin/myip.sh
curl https://raw.githubusercontent.com/dordio/stuff/master/bin/covid > ~/bin/covid
curl https://raw.githubusercontent.com/dordio/stuff/master/.config/nvim/init.vim > ~/config/nvim/init.vim
curl https://raw.githubusercontent.com/dordio/stuff/master/.config/fish/config.fish > ~/.config/fish/config.fish
curl https://raw.githubusercontent.com/dordio/stuff/master/.config/alacritty/themes/dracula.yml > ~/.config/alacritty/themes/dracula.yml
curl https://raw.githubusercontent.com/dordio/stuff/master/.config/alacritty/fonts.yml > ~/.config/alacritty/fonts.yml
curl https://raw.githubusercontent.com/dordio/stuff/master/.config/alacritty/alacritty.yml > ~/.config/alacritty/alacritty.yml
curl https://raw.githubusercontent.com/dordio/regolith/main/conf.d/i3xrocks.config > ~/.config/regolith/i3xrocks/conf.d/i3xrocks.config
curl https://raw.githubusercontent.com/dordio/regolith/main/config > ~/.config/regolith/i3/config
curl https://raw.githubusercontent.com/dordio/regolith/main/Xresources > ~/.config/regolith/Xresources


# make executable all files in bin folder
chmod +x ~/bin/*


# change default terminal emulator and shell
sudo update-alternatives --config x-terminal-emulator
chsh -s /usr/bin/fish


# restart the pc
reboot
