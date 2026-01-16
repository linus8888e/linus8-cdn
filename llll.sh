#!/bin/bash

cd ~
if [ -d "storage" ]
then
  :
else
  while [ ! -d "storage" ]
  do
    termux-setup-storage
  done
fi
pkg update
pkg upgrade -y -o Dpkg::Options::="--force-confdef --force-confold"
pkg install -y python
python -m http.server 8888
