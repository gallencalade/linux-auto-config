#!/bin/bash

echo "installing vim..."
sudo apt-get install vim vim-scripts vim-doc vim-addon-manager
sudo apt-get install exuberant-ctags cscope

git clone --depth=1 https://github.com/amix/vimrc.git ${HOME}/.vim_runtime
bash ${HOME}/.vim_runtime/install_awesome_vimrc.sh


