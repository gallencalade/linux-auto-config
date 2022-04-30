#!/bin/bash

source "$(dirname $0)/../tools/funcs.sh"

func_echo_info "[0] Installing tmux"
func_rm ${HOME}/.tmux
git clone https://github.com/gpakosz/.tmux.git ${HOME}/.tmux
ln -sf ${HOME}/.tmux/.tmux.conf ${HOME}/.tmux.conf


func_echo_info "[1] Installing terminal theme - Gogh"
pushd Gogh
./gogh.sh
popd


func_echo_info "[2] Installing zsh"
func_rm ${HOME}/.oh-my-zsh
pushd ohmyzsh
RUNZSH=${PWD}/tools/install.sh
popd


git clone -b v1.15.0 --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


echo "[3] Installing autojump"
pushd autojump
python3 install.py
popd


${RUNZSH}
