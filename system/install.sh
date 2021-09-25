#!/bin/bash

source "../funcs.sh"

HOME_DESKTOPS_PATH="${HOME}/.local/share/applications/"
echo "[0] Installing Applications Desktops Icons to ${HOME_DESKTOPS_PATH}"
cp desktops/* ${HOME_DESKTOPS_PATH}


HOME_ICONS_PATH="${HOME}/.local/share/icons"
echo "[1] Installing System Icons to ${HOME_ICONS_PATH}"
func_chk_mkdir ${HOME_ICONS_PATH}
echo " - Installing Aqua Dar."
tar xvJf icons/Aqua-Dark.tar.xz -C ${HOME_ICONS_PATH} >> /dev/null
echo " - Installing Candy Icons"
tar xvJf icons/candy-icons.tar.xz -C ${HOME_ICONS_PATH} >> /dev/null
echo " - Installing Sweet Ranbow"
tar xvJf icons/Sweet-Rainbow.tar.xz -C ${HOME_ICONS_PATH} >> /dev/null


HOME_THEME_PATH="${HOME}/.themes"
echo "[2] Installing System Themes to ${HOME_THEME_PATH}"
func_chk_mkdir ${HOME_THEME_PATH}
echo " - Installing Ant Dracula Slim"
tar xvJf themes/Ant-Dracula-Slim.tar.xz -C ${HOME_THEME_PATH} >> /dev/null
echo " - Installing Ant Dracula Slim Standard Buttons"
tar xvJf themes/Ant-Dracula-slim-standard-buttons.tar.xz -C ${HOME_THEME_PATH} >> /dev/null
echo " - Installing Sweet Dark"
tar xvJf themes/Sweet-Dark.tar.xz -C ${HOME_THEME_PATH} >> /dev/null


HOME_EXTENSIONS_PATH="${HOME}/.local/share/gnome-shell/extensions"
echo "[3] Installing Gnome Shell Extensions(Offline) to ${HOME_EXTENSIONS_PATH}"
func_chk_mkdir ${HOME_EXTENSIONS_PATH}
cp -r extensions/* ${HOME_EXTENSIONS_PATH}
