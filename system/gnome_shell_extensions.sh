#!/bin/bash

source "$(dirname $0)/../tools/funcs.sh"

func_apt_get_install 	gnome-shell-extensions \
			gnome-shell-extension-manager
