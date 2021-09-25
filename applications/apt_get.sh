#!/bin/bash

echo " - Coping sources.list to /etc/apt/"
sudo cp sources.list /etc/apt/sources.list

echo " - Adding Repository for Bashtop"
sudo add-apt-repository -y ppa:bashtop-monitor/bashtop

echo " - Adding Repository for Shutter"
sudo add-apt-repository -y ppa:linuxuprising/shutter

echo " - Adding Repository for Typora"
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'

sudo apt-get update && apt-get dist-upgrade

func_apt_get_install() {
   echo " - Installing about ${1}"
   sudo apt-get -y install ${1}
}

GCC="build-essential nasm gcc g++ gdb gfortran"
func_apt_get_install ${GCC}

CLANG="clang llvm lldb clang-format clang-tidy"
func_apt_get_install ${CLANG}

MAKE="cmake m4 autoconf libtool"
func_apt_get_install ${MAKE}

PYTHON="python3-pip ipython3 python3-wxgtk4.0"
func_apt_get_install ${PYTHON}

VIM="vim vim-doc vim-scripts vim-addon-manager exuberant-ctags cscope"
func_apt_get_install ${VIM}

CODINGS="valgrind git curl"
func_apt_get_install ${CODINGS}

SQLITE="sqlite3 sqlitebrowser"
func_apt_get_install ${SQLITE}

SHELL="zsh tmux trash-cli autojump lolcat"
func_apt_get_install ${SHELL}

INPUTS="fcitx xsel"
func_apt_get_install ${INPUTS}

COMPRESS="unzip unrar"
func_apt_get_install ${COMPRESS}

CMDS="neofetch tree htop bashtop net-tools ifstat dos2unix locate gnome-tweaks"
func_apt_get_install ${CMDS}

SWS="calibre okular shutter focuswriter bless wireshark vlc speedcrunch"
func_apt_get_install ${SWS}

