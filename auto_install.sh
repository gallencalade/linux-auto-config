#!/bin/bash

source "$(dirname $0)/tools/funcs.sh"

func_echo_info "[==== Configuring System ====]"
func_entry_install system

func_echo_info "[==== Configuring Terminal ====]"
# func_entry_install terminal

func_echo_info "[==== Configuring Vim ====]"
# func_entry_install vim

func_echo_info "[==== Configuring Applications ====]"
# func_entry_install applications

func_echo_info "[==== Configuring Customization ====]"
# func_entry_install configuration
