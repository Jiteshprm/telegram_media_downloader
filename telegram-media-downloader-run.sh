#!/bin/bash

if [ ! -d conf ]; then
  echo "conf folder does not exist, creating and copy new config file"
  mkdir conf
  cp config.yaml conf
fi

python3 media_downloader.py conf/config.yaml

