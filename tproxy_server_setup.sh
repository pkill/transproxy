#!/bin/sh

# Install dependencies
sudo yum install -y squid git

# Get transproxy
cd $HOME
git clone https://github.com/pkill/transproxy.git

# Backup old squidconf and load config for transparent proxy
sudo mv /etc/squid/squid.conf /etc/squid/squid.conf.$(date +%F)
sudo cp transproxy/squid.conf /etc/squid/squid.conf

# Make sure squid starts on startup
sudo chkconfig squid on

# Start squid if it's not already started
sudo service squid restart
