#!/bin/bash

# Installing dependencies

echo "#################################"
echo "Installing packages"
echo "#################################"
sudo yum install wget unzip httpd -y
echo

# Start & Enable service
echo "#############################"
echo "Start and enable service"
echo "#############################"
sudo systemctl start httpd
sudo systemctl enable httpd
echo

# Creating temp directory
echo "###########################"
echo "Starting artifact deployment"
echo "###########################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

wget https://www.tooplate.com/zip-templates/2098_health.zip
unzip 2098_health.zip
sudo cp -r 2098_health/* /var/www/html/
echo

# Bounce Service
echo "###################################"
echo "Restarting htpd service"
echo "###################################"
systemctl restart httpd
echo


#Clean up
echo "#################################"
echo "Removing temp files"
echo "#################################"

rm -rf /tmp/webfiles
echo

sudo systemctl status httpd
ls /var/www/html/
