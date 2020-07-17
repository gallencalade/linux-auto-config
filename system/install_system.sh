#!/bin/bash

# echo "Installing apps desktops icons..."
# APPS_DESKTOPS_PATH="/usr/share/applications/"
# sudo cp desktops/*.desktop ${APPS_DESKTOPS_PATH}

source "${PWD}/../scripts/funcs.sh"

echo "Installing linux icons..."
LINUX_ICONS_PATH="${HOME}/.local/share/icons"
func_chk_mkdir ${LINUX_ICONS_PATH}
tar xvJf icons/Aqua-Dark.tar.xz -C ${LINUX_ICONS_PATH} >> /dev/null
tar xvJf icons/candy-icons.tar.xz -C ${LINUX_ICONS_PATH} >> /dev/null

echo "Installing linux themes..."
LINUX_THEME_PATH="${HOME}/.themes"
func_chk_mkdir ${LINUX_THEME_PATH}
tar xvJf themes/Ant-Dracula-Slim.tar.xz -C ${LINUX_THEME_PATH} >> /dev/null
tar xvJf themes/Ant-Dracula-slim-standard-buttons.tar.xz -C ${LINUX_THEME_PATH} >> /dev/null
tar xvJf themes/Sweet-Dark.tar.xz -C ${LINUX_THEME_PATH} >> /dev/null

echo "Installing linux extensions..."
LINUX_EXTENSIONS_PATH="${HOME}/.local/share/gnome-shell/extensions"
func_chk_mkdir ${LINUX_EXTENSIONS_PATH}
cp -r extensions/* ${LINUX_EXTENSIONS_PATH}
