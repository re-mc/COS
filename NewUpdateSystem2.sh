#!/bin/bash

echo "Enter Password For Permissions To Update."
read -p "Press Any Key To Continue!" -s
sudo echo "Permissions Granted!"

while [ true ]; do

cd bin/Build

./build.sh


source updatecontent.sh

Update

echo "Press [Ctrl C] Or Exit Button To Exit Updater"
echo "Press [Enter] To Download Next Update!"

read

done
