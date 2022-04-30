#!/bin/bash

echo " - Installing Bat"
sudo dpkg -i dpkgs/bat*_amd64.deb

echo " - Installing lsd"
sudo dpkg -i dpkgs/lsd*_amd64.deb

echo " - Installing Sogou"
sudo dpkg -i dpkgs/sogouimebs*_amd64.deb

echo " - Installing Mysql"
sudo dpkg -i dpkgs/mysql*.deb
sudo apt-get -y install mysql-common \
                        mysql-community-server \
                        mysql-community-client \
                        mysql-workbench-community

