#!/bin/bash
while [ ! -d "storage" ]; do
  termux-setup-storage
done
pkg update
pkg upgrade -y -o Dpkg::Options::="--force-confdef --force-confold"
pkg install -y python
cd ~
python -m http.server
