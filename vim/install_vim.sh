#!/bin/bash

source "${PWD}/../scripts/funcs.sh"

echo "Customizing VIM..."

func_chk_rm ${HOME}/.vim_runtime

git clone --depth=1 https://github.com/amix/vimrc.git ${HOME}/.vim_runtime
sh ${HOME}/.vim_runtime/install_awesome_vimrc.sh

VIM=${HOME}/.vim
func_chk_rm ${VIM}
ln -s ${PWD}/vim ${VIM}

MY_CONFIGS=${HOME}/.vim_runtime/my_configs.vim
func_chk_rm ${MY_CONFIGS}
ln -s ${PWD}/my_configs.vim ${MY_CONFIGS}
