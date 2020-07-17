#!/bin/bash

source "${PWD}/../scripts/funcs.sh"

FONTS_PATH=${HOME}/.local/share/fonts
func_chk_mkdir ${FONTS_PATH}

cp Hack/* ${FONTS_PATH}
cp Hack-Nerd/* ${FONTS_PATH}
