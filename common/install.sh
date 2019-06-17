#!/bin/bash

# apt-get install softwares
# ./apt_get_install.sh

# cp desktops
cp desktops/*.desktop /usr/local/share/applications/

# linux icons
mkdir -p ${HOME}/.local/share/icons
tar xvJf icons/Aqua-Dark.tar.xz ${HOME}/.local/share/icons

# linux themes
mkdir -p ${HOME}/.themes
tar xvJf themes/Ant-Dracula-slim.tar.xz -C ${HOME}/.themes/
tar xvJf themes/Ant-Dracula-slim.tar.xz -C ${HOME}/.themes/

# yakuake skins
mkdir -p /usr/share/yakuake/skins
tar zxvf yakuake/materia-dark-yakuake.tar.gz -C /usr/share/yakuake/skins/
tar zxvf yakuake/monochrome-kde-master.tar.gz -C /usr/share/yakuake/skins/

# thunderbird themes


# git config
git config --global user.name "Gallen Calade"
git config --global user.email "gallencalade@qq.com"
git config --global core.editor vim
git config alias.br branch
git config alias.ck checkout
git config alias.cm commit
git config alias.lg "log --oneline --graph"
