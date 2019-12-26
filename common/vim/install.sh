#!/bin/bash

echo "Cloning vimrc runtime..."
git clone --depth=1 https://github.com/amix/vimrc.git ${HOME}/.vim_runtime
${HOME}/.vim_runtime/install_awesome_vimrc.sh

echo "Making links..."
ln -s ${PWD}/vim ${HOME}/.vim
ln -s ${PWD}/my_configs.vim ${HOME}/.vim_runtime/my_configs.vim

echo "Generating ctags..."
ctags.sh

echo "Generating cscopes..."
cscope.sh
