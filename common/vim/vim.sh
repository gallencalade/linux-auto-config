#!/bin/bash

echo "installing vim..."
apt-get install vim vim-scripts vim-doc

echo "making autoload/after/plugin directories..."
mkdir -p ~/.vim/autoload ~/.vim/after/ ~/.vim/doc/ ~/.vim/plugin/
