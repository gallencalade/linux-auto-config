#!/bin/bash

echo "[0] Installing Apt-get Applications"
./apt_get.sh

echo "[1] Installing Gnome Shell Extensions"
./gnome_shell_extensions.sh

echo "[2] Installing Docker"
./docker.sh

echo "[3] Pip Installing"
./pip.sh

echo "[4] Installing Themes"
./themes.sh

echo "[5] Installing Offline dpkgs"
./dpkgs.sh
