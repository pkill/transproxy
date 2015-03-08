#!/bin/sh
sudo yum install -y squid
cd $HOME
git clone https://github.com/pkill/transproxy.git
sudo mv /etc/squid/squid.conf /etc/squid/squid.conf.$(date +%F)
sudo cp transproxy/squid.conf /etc/squid/squid.conf
