#!/bin/bash

source "$(dirname $0)/../tools/funcs.sh"

func_pip3_install() {
	for e in $*
	do
		func_echo_info " - Installing ${e}"
		pip3 install ${e}
		shift
	done
}


GDB_EXT="keystone-engine unicorn capstone ropper"
func_pip3_install ${GDB_EXT}

SWS="superpaper psutil"
func_pip3_install ${SWS}
