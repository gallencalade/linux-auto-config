#!/bin/bash

echo " - Installing Bashtop Themes"
BASHTOP_THEMES_PATH=${HOME}/.config/bashtop/themes
func_chk_mkdir ${BASHTOP_THEMES_PATH}
cp themes/bashtop/flat-remix.theme ${BASHTOP_THEMES_PATH}
