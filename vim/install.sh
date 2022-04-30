#!/bin/bash

source "$(dirname $0)/../tools/funcs.sh"


func_echo_info "[0] Installing vimrc"
func_rm ${HOME}/.vim_runtime
git clone --depth=1 https://github.com/amix/vimrc.git ${HOME}/.vim_runtime
bash ${HOME}/.vim_runtime/install_awesome_vimrc.sh

func_echo_info "[1] Configuring vim"
VIM=${HOME}/.vim
func_rm ${VIM}
ln -s ${PWD}/vim ${VIM}

MY_CONFIGS=${HOME}/.vim_runtime/my_configs.vim
func_rm ${MY_CONFIGS}
ln -s ${PWD}/my_configs.vim ${MY_CONFIGS}

func_echo_info "[2] Generating ctags database"
./ctags.sh

func_echo_info "[3] Generating cscope databse"
./cscope.sh
