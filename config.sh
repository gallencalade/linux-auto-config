#!/bin/bash

echo "[0] Configuring Git"
git config --global user.name "Gallen Calade"
git config --global user.email "gallencalade@gmail.com"
git config --global core.editor vim

git config --global alias.br branch
git config --global alias.ck checkout
git config --global alias.cm commit
git config --global alias.st status
git config --global alias.cl "clone --recursive"

echo "[1] Installing GEF for GDB"
wget -q -O- https://github.com/hugsy/gef/raw/master/scripts/gef.sh | sh
