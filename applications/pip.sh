#!/bin/bash

GDB_EXT="keystone-engine unicorn capstone ropper"
echo " - Pip Installing ${GDB_EXT}"
sudo pip3 install ${GDB_EXT}

SWS="superpaper psutil"
echo " - Pip Installing ${SWS}"
sudo pip3 install ${SWS}
