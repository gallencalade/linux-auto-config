#!/bin/bash

apt-get upgrade
apt-get update
apt-get dist-upgrade

apt-get install build-essential
apt-get install vim vim-doc vim-scripts vim-addon-manager
apt-get install gdb gcc g++ linux-perf
apt-get install git
apt-get install libtool autoconf
apt-get install calibre forcuswriter htop kate bless minicom okular speedcrunch
apt-get install yakuake vlc

wget -q -O- https://github.com/hugsy/gef/raw/master/gef.sh | sh
