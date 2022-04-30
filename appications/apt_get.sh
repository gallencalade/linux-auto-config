#!/bin/bash

source "$(dirname $0)/../tools/funcs.sh"

func_apt_get_install() {
	for e in $*
	do
		func_echo_info " - Installing ${e}"
		apt-get install -y ${e}
		shift
	done
}


apt-get update && apt-get dist-upgrade

GCC="linux-headers-generic build-essential nasm gcc g++ gdb gfortran"
func_apt_get_install ${GCC}

CLANG="clang llvm lldb clang-format clang-tidy"
func_apt_get_install ${CLANG}

MAKE="cmake m4 autoconf libtool"
func_apt_get_install ${MAKE}

PYTHON="python3 python3-pip ipython3 python3-wxgtk4.0"
func_apt_get_install ${PYTHON}

VIM="vim vim-doc vim-scripts vim-addon-manager exuberant-ctags cscope"
func_apt_get_install ${VIM}

CODINGS="valgrind git curl wget"
func_apt_get_install ${CODINGS}

SQLITE="sqlite3 sqlitebrowser libsqlite3-dev"
func_apt_get_install ${SQLITE}

SHELL="zsh tmux trash-cli autojump lolcat bat"
func_apt_get_install ${SHELL}

INPUTS="fcitx xsel"
func_apt_get_install ${INPUTS}

COMPRESS="unzip unrar"
func_apt_get_install ${COMPRESS}

CMDS="neofetch tree htop bashtop net-tools ifstat dos2unix locate sysstat tcpdump iotop"
func_apt_get_install ${CMDS}

SWS="calibre okular shutter focuswriter bless wireshark vlc speedcrunch zeal
typora remmina gnome-tweaks"
func_apt_get_install ${SWS}

