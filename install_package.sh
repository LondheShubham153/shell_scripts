#!/bin/bash

<<note

This script will install any package passed as argument
./install_package.sh <arg>
note



echo "***************INSTALLING $1******************"

sudo apt-get update
sudo apt-get install $1 -y

sudo systemctl start $1
sudo systemctl enable $1

echo "***************INSTALLED $1******************"
