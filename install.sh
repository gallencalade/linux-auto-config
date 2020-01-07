#!/bin/bash

echo "Installing apps..."
./install_apps.sh

echo "Installing common..."
cd ./common && ./install.sh

echo "All installations are done."
