#!/bin/bash
set -eu
key=id_rsa.pub

if [ ! -e ~/.ssh ]; then
mkdir ~/.ssh
chmod 700 ~/.ssh
fi

if [ -e ./id_rsa.pub ]; then
mv $key ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
else
echo "id_rsa.pub not found."
fi
