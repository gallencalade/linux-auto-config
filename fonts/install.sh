#!/bin/bash

source "${PWD}/../funcs.sh"

FONTS_PATH=${HOME}/.local/share/fonts
func_chk_mkdir ${FONTS_PATH}

echo "[0] Installing Font Hack"
find ./ -name "*.ttf" -print0 | xargs -0 -n 1 -i cp {} ${FONTS_PATH}
