#!/bin/bash

sudo add-apt-repository ppa:bashtop-monitor/bashtop

sudo apt-get update && apt-get dist-upgrade

sudo apt-get -y install build-essential gcc g++ gdb clang llvm lldb golang
sudo apt-get -y install zsh tmux trash-cli autojump lolcat nasm locate
sudo apt-get -y install m4 autoconf cmake libtool gfortran fcitx xsel xclip
sudo apt-get -y install calibre okular neofetch focuswriter sqlite3
sudo apt-get -y install vim vim-doc vim-scripts vim-addon-manager kate
sudo apt-get -y install exuberant-ctags cscope git sqlitebrowser valgrind
sudo apt-get -y install bless wireshark curl vlc speedcrunch unzip unrar
sudo apt-get -y install htop tree net-tools ifstat dos2unix xclip bashtop
sudo apt-get -y install python3 python3-pip ipython3 python3-wxgtk4.0
sudo apt-get -y install gnome-shell-extension-draw-on-your-screen
sudo apt-get -y install gnome-shell-extension-system-monitor
sudo apt-get -y install gnome-shell-extension-weather
sudo apt-get -y install gnome-shell-extension-workspaces-to-dock

sudo pip3 install keystone-engine unicorn capstone ropper
sudo pip3 install superpaper psutil

sudo dpkg -i lsd_0.17.0_amd64.deb
sudo dpkg -i bat_0.15.4_amd64.deb
