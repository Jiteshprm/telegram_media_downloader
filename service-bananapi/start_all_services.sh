#!/bin/bash
set -x
#Must be run as sudo
if [ $EUID -ne 0 ]
  then echo "Please run with sudo!"
  exit
fi


cp telegram-media-downloader-scheduler.service /etc/systemd/system
cp telegram-media-downloader-scheduler.timer /etc/systemd/system
systemctl daemon-reload
systemctl enable telegram-media-downloader-scheduler.service
systemctl enable --now telegram-media-downloader-scheduler.timer
systemctl start telegram-media-downloader-scheduler.service

