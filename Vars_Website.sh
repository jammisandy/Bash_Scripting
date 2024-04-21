#!/bin/bash

# varaible declaration
PACKAGE="httpd wget unzip"
SVC="httpd"
URL='https://www.tooplate.com/zip-templates/2098_health.zip'
ART_NAME='2098_health'
TEMPDIR="/tmp/webfiles"

# Installing dependencies

echo "#################################"
echo "Installing packages"
echo "#################################"
sudo yum install $PACKAGE -y
echo

# Start & Enable service
echo "#############################"
echo "Start and enable service"
echo "#############################"
sudo systemctl start $SVC
sudo systemctl enable $SVC
echo

# Creating temp directory
echo "###########################"
echo "Starting artifact deployment"
echo "###########################"
mkdir -p $TEMPDIR
cd $TEMPDIR
echo

wget $URL
unzip $ART_NAME.zip
sudo cp -r $ART_NAME/* /var/www/html/
echo

# Bounce Service
echo "###################################"
echo "Restarting htpd service"
echo "###################################"
systemctl restart $SVC
echo


#Clean up
echo "#################################"
echo "Removing temp files"
echo "#################################"

rm -rf $TEMPDIR
echo

sudo systemctl status $SVC
ls /var/www/html/
