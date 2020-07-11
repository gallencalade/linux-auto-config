#!/bin/bash

sudo add-apt-repository ppa:bashtop-monitor/bashtop

sudo apt-get update && apt-get dist-upgrade

sudo apt-get -y install build-essencial gcc g++ gdb clang llvm lldb go golang
sudo apt-get -y install zsh tmux trash-cli autojump lolcat
sudo apt-get -y install m4 aclocal autoreconf cmake libtool
sudo apt-get -y install calibre okular neofetch
sudo apt-get -y install vim vim-doc vim-scripts vim-addon-manager kate forcuswriter
sudo apt-get -y install exuberant-ctags cscope git
sudo apt-get -y install bless wireshark curl vlc speedcrunch unzip unrar
sudo apt-get -y install htop tree net-tools ifstat dos2unix xclip linux-perf bashtop
sudo apt-get -y install python3 python3-pip
sudo apt-get -y install gnome-shell-extension-draw-on-your-screen
sudo apt-get -y install gnome-shell-extension-system-monitor

sudo pip3 install keystone-engine unicorn capstone ropper

sudo dpkg -i lsd_0.17.0_amd64.deb
sudo dpkg -i bat_0.15.4_amd64.deb
sudo dpkg -i netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb
sudo dpkg -i youdao-dict_6.0.0-ubuntu-amd64.deb
