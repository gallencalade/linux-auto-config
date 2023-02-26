#!/bin/bash

source "$(dirname $0)/tools/funcs.sh"


# func_echo_info "[==== Configuring system ====]"
# func_entry_install system

# func_echo_info "[==== Installing applications ====]"
# func_entry_install applications

# func_echo_info "[==== Configuring vim ====]"
# func_entry_install vim

func_echo_info "[==== Configuring terminal ====]"
func_entry_install terminal

# func_echo_info "[==== Configuring customization ====]"
# func_entry_install configure
