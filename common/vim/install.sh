#!/bin/bash

source "../../funcs.sh"

echo "Cloning vimrc runtime..."
git clone --depth=1 https://github.com/amix/vimrc.git ${HOME}/.vim_runtime
${HOME}/.vim_runtime/install_awesome_vimrc.sh

echo "Making links..."
VIM=${HOME}/.vim
func_chk_rm ${VIM}
ln -s ${PWD}/vim ${VIM}

MY_CONFIGS=${HOME}/.vim_runtime/my_configs.vim
func_chk_rm ${MY_CONFIGS}
ln -s ${PWD}/my_configs.vim ${MY_CONFIGS}

echo "Generating ctags..."
ctags.sh

echo "Generating cscopes..."
cscope.sh
