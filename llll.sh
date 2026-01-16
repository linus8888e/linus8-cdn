#!/bin/bash

if [ -d "storage" ]; then
  termux-setup-storage -y
else
  while [ ! -d "storage" ]; do
    termux-setup-storage
  done
fi
