#!/usr/bin/env bash

#a lot was done under root so make sure /vagrant is owned by vagrant
chown -R vagrant:vagrant /vagrant

#perform overall clean up
# apt-get -y update
# apt-get -y autoremove
# apt-get -y autoclean
echo "Installation Complete."