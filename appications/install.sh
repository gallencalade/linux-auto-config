#!/bin/bash

func_echo_info "[0] Apt-get installs applications"
./apt_get.sh

func_echo_info "[1] Snap installs applications"
./snap.sh

func_echo_info "[2] Pip3 Installs applications"
./pip3.sh

func_echo_info "[3] Installing docker"
./docker.sh

