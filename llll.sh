#!/bin/bash

echo -e "\e[32mRunning Software!\e[0m"
cd ~
if [ -d "storage" ]
then
  :
else
  echo -e "\e[31mPlease storage access!\e[0m"
  while [ ! -d "storage" ]
  do
    termux-setup-storage
  done
fi
echo -e "\e[32mUpdate and upgrade and install software's! Please wait!\e[0m"
pkg update
pkg upgrade -y -o Dpkg::Options::="--force-confdef --force-confold"
pkg install -y python
python -m http.server 8888
