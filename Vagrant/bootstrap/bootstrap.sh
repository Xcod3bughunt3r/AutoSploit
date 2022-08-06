#!/bin/bash

echo "Yolosploit configurator 2.42"
sudo apt update && apt upgrade -y

echo "Installing metasploit. BE PATIENT (5 min max?)"
wget --quiet https://downloads.metasploit.com/data/releases/metasploit-latest-linux-x64-installer.run
chmod 777 metasploit-latest-linux-x64-installer.run
sudo ./metasploit-latest-linux-x64-installer.run --unattendedmodeui none --prefix /opt/msf --mode unattended

echo "Installing python2"
sudo apt install python python-pip python-virtualenv git -y

sudo apt install fish -y
sudo chsh -s /usr/bin/fish ubuntu

cd ~/ && git clone --depth=1 https://github.com/NullArray/AutoSploit
