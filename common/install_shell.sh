#!/bin/bash

source ../funcs.sh
func_chk_mkdir gitcloned

PWD_SAVE=${HOME}

echo "Installing fonts..."
cd gitcloned
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ${PWD_SAVE}

echo "Installing tmux..."
cd ${HOME}
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
cd ${PWD_SAVE}

echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s /usr/bin/zsh

echo "Installing autojump..."
cd gitcloned
git clone git://github.com/wting/autojump.git
cd autojump && ./install.py
echo "[[ -s ${HOME}/.autojump/etc/profile.d/autojump.sh ]] && source ${HOME}/.autojump/etc/profile.d/autojump.sh" >> ${HOME}/.zshrc
cd ${PWD_SAVE}

echo "Installing trash-cli..."
echo "alias rm=\"trash-put\"" >> ${HOME}/.zshrc

echo "Installing gef..."
wget -q -O- https://github.com/hugsy/gef/raw/master/scripts/gef.sh | sh

echo "Installing env variables..."
echo "export C_INCLUDE_PATH=\"/usr/local/include:${C_INCLUDE_PATH}\"" >> ${HOME}/.zshrc
echo "export CPLUS_INCLUDE_PATH=\"/usr/local/include:${CPLUS_INCLUDE_PATH}\"" >> ${HOME}/.zshrc
echo "export LD_LIBRARY_PATH=\"/usr/local/lib\"" >> ${HOME}/.zshrc
echo "export LIBRARY_PATH=\"/usr/local/lib\"" >> ${HOME}/.zshrc
