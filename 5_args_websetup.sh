#!/bin/bash

# Variable Declaration
PACKAGE="httpd wget unzip"
SVC="httpd"
#URL='https://www.tooplate.com/zip-templates/2098_health.zip'
#ART_NAME='298_health'
TEMPDIR="/tmp/webfil
# Installing Dependencie
echo "#######################################"
echo "Installing package
echo "########################################"
sudo yum install $PACKAGE -y > /dev/null
ech

# Start & Enable Service
echo "########################################"
echo "Start & Enable HTTPD Service"
echo "########################################"
sudo systemctl start $SVC
sudo systemctl enable $SVC
echo

# Creating Temp Directory
echo "########################################"
echo "Starting Artifact eployment"
echo "########################################"
mkdir -p $TEMPDIR
cd $TEMPDI
echo

wget $1 > /dev/null
unzip $2.zip > /dev/nul
sudo cp -r $2/* /var/www/html/
echo

# Bounce Service
echo "########################################"
echo "Restarting HTTPD service"
echo "########################################"
systemctl restart $SVC
echo

# Clean Up
echo "########################################"
echo "Removing Temporary Files"
echo "########################################"
rm -rf $TEMPDIR
echo

sudo systemctl status $SVC
ls /var/www/html/
