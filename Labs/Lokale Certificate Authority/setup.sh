#!/bin/bash

DIR='/home/hacker/eduCA/'

echo 'setup Lab Lokale Certificate Authority'

echo "create CA directory in $DIR"
mkdir $DIR
cd $DIR

echo -n 'setup basic structure... '
mkdir certs db private server
chmod 700 private
touch db/index
openssl rand -hex 16 > db/serial
echo 1001 > db/crlnumber
echo 'OK'

echo -n 'stop apache2 webserver... '
sudo systemctl stop apache2.service
echo 'OK'

echo -n 'activate mod_ssl for apache2'
sudo a2enmod ssl
echo 'OK'

echo -n 'start apache2 webserver... '
sudo systemctl start apache2.service
echo 'OK'
