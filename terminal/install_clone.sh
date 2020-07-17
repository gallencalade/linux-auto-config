#!/bin/bash

source "${PWD}/../scripts/funcs.sh"

echo "Installing tmux..."
func_chk_rm ${HOME}/.tmux
cd ${HOME}
git clone https://github.com/gpakosz/.tmux.git ${HOME}/.tmux
ln -s -f ${HOME}/.tmux/.tmux.conf
cd -

func_chk_rm ${HOME}/.oh-my-zsh
cd ohmyzsh && ./tools/install.sh && cd -
