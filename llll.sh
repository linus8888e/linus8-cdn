#!/bin/bash

GREEN="\e[32m"
RED="\e[31m"
END="\e[0m"

echo -e "${GREEN}Running Software!${END}"
cd ~
if [ -d "storage" ]
then
  :
else
  echo -e "${RED}Please storage access!${END}"
  while [ ! -d "storage" ]
  do
    termux-setup-storage
  done
fi
echo -e "${GREEN}Update and upgrade and install software's! Please wait!${END}"
pkg update
pkg upgrade -y -o Dpkg::Options::="--force-confdef --force-confold"
pkg install -y python
python -m http.server 8888
