#!/bin/bash
set -x
#Must be run as sudo
if [ $EUID -ne 0 ]
  then echo "Please run with sudo!"
  exit
fi


systemctl daemon-reload
systemctl stop telegram-media-downloader-scheduler.service
systemctl stop telegram-media-downloader-scheduler.timer
systemctl disable telegram-media-downloader-scheduler.service
systemctl disable telegram-media-downloader-scheduler.timer

