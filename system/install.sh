#!/bin/bash

source "$(dirname $0)/../tools/funcs.sh"

# HOME_DESKTOPS_PATH="${HOME}/.local/share/applications/"
# func_echo_info "[0] Installing Applications Desktops Icons to ${HOME_DESKTOPS_PATH}"
# cp desktops/* ${HOME_DESKTOPS_PATH}


HOME_EXTENSIONS_PATH="${HOME}/.local/share/gnome-shell/extensions"
func_echo_info "[0] Installing Gnome Shell Extensions to ${HOME_EXTENSIONS_PATH}"
./gnome_shell_extensions.sh


HOME_FONTS_PATH=${HOME}/.local/share/fonts
func_echo_info "[1] Installing Fonts to ${HOME_FONTS_PATH}"
func_mkdir ${HOME_FONTS_PATH}
find ./ -name "*.ttf" -print0 | xargs -0 -n 1 -i cp {} ${HOME_FONTS_PATH}


HOME_ICONS_PATH="${HOME}/.local/share/icons"
func_echo_info "[2] Installing System Icons to ${HOME_ICONS_PATH}"
func_mkdir ${HOME_ICONS_PATH}
func_echo_info " - Installing Aqua Dar."
tar xvJf icons/Aqua-Dark.tar.xz -C ${HOME_ICONS_PATH} >> /dev/null
func_echo_info " - Installing Candy Icons"
tar xvJf icons/candy-icons.tar.xz -C ${HOME_ICONS_PATH} >> /dev/null
func_echo_info " - Installing Sweet Ranbow"
tar xvJf icons/Sweet-Rainbow.tar.xz -C ${HOME_ICONS_PATH} >> /dev/null


HOME_THEMES_PATH="${HOME}/.themes"
func_echo_info "[3] Installing System Themes to ${HOME_THEMES_PATH}"
func_mkdir ${HOME_THEMES_PATH}
func_echo_info " - Installing Ant Dracula Slim"
tar xvJf themes/Ant-Dracula-Slim.tar.xz -C ${HOME_THEMES_PATH} >> /dev/null
func_echo_info " - Installing Ant Dracula Slim Standard Buttons"
tar xvJf themes/Ant-Dracula-slim-standard-buttons.tar.xz -C ${HOME_THEMES_PATH} >> /dev/null
func_echo_info " - Installing Sweet Dark"
tar xvJf themes/Sweet-Dark.tar.xz -C ${HOME_THEMES_PATH} >> /dev/null

