#!/bin/bash

echo 'clean-up Lab Lokale Certificate Authority'

echo -n 'stopping apache2 webserver... '
sudo systemctl stop apache2.service
echo 'OK'

echo -n 'removing apache2 configuration... '
sudo rm /etc/apache2/sites-enabled/hackingexposed.ch.conf
echo 'OK'

echo -n 'cleaning CA... '
rm -rf certs db eduCA private
echo 'OK'
