#!/bin/bash

source "$(dirname $0)/../tools/funcs.sh"


func_echo_info "[0] Configuring git"
./git.sh

func_echo_info "[1] Configuring zsh"
ln -sfr zshrc ${HOME}/.zshrc

func_echo_info "[3] Configuring myrc"
ln -sfr myrc ${HOME}/.myrc


# HOME_DESKTOPS_PATH="${HOME}/.local/share/applications/"
# func_echo_info "[0] Installing Applications Desktops Icons to ${HOME_DESKTOPS_PATH}"
# cp desktops/* ${HOME_DESKTOPS_PATH}
