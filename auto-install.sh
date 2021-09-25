#!/bin/bash

echo "==== Installing System ===="
pushd system && ./install.sh && popd

echo "==== Installing Applications ===="
pushd applications && ./install.sh && popd

echo "==== Installing Fonts ===="
pushd fonts && ./install.sh && popd

echo "==== Configuring Terminal ===="
pushd terminal && ./install.sh && popd

echo "==== Configuring Vim ===="
pushd vim && ./install.sh && popd

echo "==== Configuring Customization ===="
./config.sh
