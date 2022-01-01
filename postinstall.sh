#!/bin/bash

#Update
sudo apt-get update
sudo apt-get upgrade -y


#Install Realdash
sudo dpkg -i *.deb
sudo apt-get -f install -y
sudo apt-get kdialog -y

#realdash user
sudo adduser realdash
groups | sed 's/pi //g' | sed 's/ /,/g' | xargs -I{} sudo usermod -a -G {} realdash
sudo adduser realdash users
sudo adduser realdash sudo
sudo adduser realdash adm
sudo adduser realdash video
sudo adduser realdash games
sudo adduser realdash plugdev
sudo adduser realdash input
sudo adduser realdash netdev
sudo adduser realdash spi
sudo adduser realdash i2c
sudo adduser realdash gpio

#Remove install file and makes the default Realdash boot active.
rm *.deb
mv xsession /home/pi/.xsession

