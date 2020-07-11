#!/bin/bash

source "${PWD}/../scripts/funcs.sh"

cd autojump && ./install.py && cd -

ln -sfr tmux.conf.local ${HOME}/.tmux.conf.local
ln -sfr zshrc ${HOME}/.zshrc
ln -sfr myrc ${HOME}/.myrc

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Installing gef..."
wget -q -O- https://github.com/hugsy/gef/raw/master/scripts/gef.sh | sh
