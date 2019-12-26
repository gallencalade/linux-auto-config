#!/bin/bash

echo "Configing tmux..."
ln -s tmux.conf.local ${HOME}/.tmux.conf.local

echo "Configing zshrc..."
ln -s zshrc ${HOME}/.zshrc

echo "Configing git..."
git config --global user.name "Gallen Calade"
git config --global user.email "gallencalade@qq.com"
git config --global core.editor vim
git config alias.br branch
git config alias.ck checkout
git config alias.cm commit
git config alias.lg "log --oneline --graph"
git config alias.mgs "merge --squash"
