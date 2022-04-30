#!/bin/bash

source "../funcs.sh"

echo "[0] Installing Autojump"
pushd autojump
python3 install.py
popd


echo "[1] Installing and Configuring Tmux..."
func_chk_rm ${HOME}/.tmux
git clone https://github.com/gpakosz/.tmux.git ${HOME}/.tmux
ln -sf ${HOME}/.tmux/.tmux.conf ${HOME}/.tmux.conf
ln -sf tmux.conf.local ${HOME}/.tmux.conf.local


echo "[2] Installing and Configuring ZSH"
func_chk_rm ${HOME}/.oh-my-zsh
pushd ohmyzsh
RUNZSH=./tools/install.sh
popd

ln -sfr zshrc ${HOME}/.zshrc
git clone -b v1.15.0 --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting


echo "[3] Configuring Shell myrc"
ln -sfr myrc ${HOME}/.myrc


echo "[4] Installing Gogh"
pushd Gogh
./gogh.sh 46
popd

echo "[5] Configuring GEF for GDB"
wget -q -O- https://github.com/hugsy/gef/raw/master/scripts/gef.sh | sh
