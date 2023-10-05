#!/usr/bin/env bash

echo "Installing Apache and setting it up..."
#sudo yum update -y > /dev/null 2>&1
sudo yum httpd -y > /dev/null 2>&1
sudo cp -r /vagrant/html/* /var/www/html/
sudo systemctl enabled httpd && systemctl start httpd