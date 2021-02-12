#!/bin/bash

echo 'clean-up Lab Iptables Webserver'

echo -n 'stopping apache2 webserver... '
systemctl stop apache2.service
echo 'OK'

echo -n 'cleaning iptables ruleset... '
iptables -F INPUT
iptables -F OUTPUT
iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT
echo 'OK'
