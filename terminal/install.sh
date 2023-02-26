#!/bin/bash

source "$(dirname $0)/../tools/funcs.sh"

func_echo_info "[0] Installing tmux"
func_rm ${HOME}/.tmux
git clone https://github.com/gpakosz/.tmux.git ${HOME}/.tmux
ln -sf ${HOME}/.tmux/.tmux.conf ${HOME}


# func_echo_info "[1] Installing terminal theme - Gogh"
# pushd Gogh
# ./gogh.sh
# popd
#
#
# func_echo_info "[2] Installing zsh"
# func_rm ${HOME}/.oh-my-zsh
# pushd ohmyzsh
# tools/install.sh
# popd
#
#
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
# echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
#
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
