#!/bin/bash

source "../../funcs.sh"

echo "Configing tmux..."
TMUX_CONF_LOCAL=${HOME}/.tmux.conf.local
func_chk_rm ${TMUX_CONF_LOCAL}
ln -s ${PWD}/tmux.conf.local ${TMUX_CONF_LOCAL}

echo "Configing zshrc..."
ZSHRC=${HOME}/.zshrc
func_chk_rm ${ZSHRC}
ln -s ${PWD}/zshrc ${ZSHRC}

echo "Configing git..."
git config --global user.name "Gallen Calade"
git config --global user.email "gallencalade@qq.com"
git config --global core.editor vim
git config alias.br branch
git config alias.ck checkout
git config alias.cm commit
git config alias.lg "log --oneline --graph"
git config alias.mgs "merge --squash"
git config alias.st status
