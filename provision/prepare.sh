#!/usr/bin/env bash

VAGRANTPATH="/home/vagrant"

echo ">>>>>Update in progress...<<<<<"
# sudo apt-get update
# sudo apt-get upgrade

#install the required tools for NVM, RVM and general usefulness
sudo apt-get -y install curl 
# sudo apt-get -y install build-essential openssl libssl-dev git python linux-headers-$(uname -r)

#install mongodb
echo ">>>>>Installing MongoDB<<<<<"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo service mongod start
echo ">>>>>MongoDB Installed<<<<<"