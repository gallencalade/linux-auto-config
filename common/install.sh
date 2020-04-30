#bin/bash

echo "Installing apps desktops icons..."
APPS_DESKTOPS_PATH="/usr/share/applications/"
sudo cp desktops/*.desktop ${APPS_DESKTOPS_PATH}

source "${PWD}/../funcs.sh"

echo "Installing linux icons..."
LINUX_ICONS_PATH="${HOME}/.local/share/icons"
func_chk_mkdir ${LINUX_ICONS_PATH}
tar xvJf icons/Aqua-Dark.tar.xz -C ${LINUX_ICONS_PATH} >> /dev/null

echo "Installing linux themes..."
LINUX_THEME_PATH="${HOME}/.themes"
func_chk_mkdir ${LINUX_THEME_PATH}
tar xvJf themes/Ant-Dracula-slim.tar.xz -C ${LINUX_THEME_PATH} >> /dev/null
tar xvJf themes/Sweet-Dark.tar.xz -C ${LINUX_THEME_PATH} >> /dev/null

#echo "Installing Yakuake skins..."
#YAKUAKE_THEME_PATH="/usr/share/yakuake/skins"
#sudo func_chk_mkdir ${YAKUAKE_THEME_PATH}
#sudo tar zxvf yakuake/materia-dark-yakuake.tar.gz -C ${YAKUAKE_THEME_PATH}
#sudo tar zxvf yakuake/monochrome-kde-master.tar.gz -C ${YAKUAKE_THEME_PATH}

#echo "Installing shell..."
#./install_shell.sh

#echo "Installing vim..."
#cd vim && ./install.sh

#if [ $(whoami) == gallencalade ] || [ $(whoami) == gallen ]
#then
#    echo "Instaling for gallen..."
#    cd gallen && ./install.sh
#fi
