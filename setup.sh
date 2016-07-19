#!/bin/bash

# add to Raspbian
sudo apt-get install -y hostapd dnsmasq ipython python-picamera vim git nmap supervisor

# config access-point
sudo cp etc/network/interfaces /etc/network/interfaces
sudo cp etc/default/hostapd /etc/default/hostapd
sudo cp etc/hostapd/hostapd.conf /etc/hostapd/hostapd.conf
sudo service hostapd start

# add Python/Flask web video streamer
mkdir /home/pi/utils
cp -r ./flask-video-streaming/ /home/pi/utils

# add  supervisor conf
sudo cp etc/supervisor/conf.d/camera.conf /etc/supervisor/conf.d/camera.conf
sudo supervisorctl update

