#!/bin/bash
set -eu
key=id_rsa.pub

if [ ! -e ~/.ssh ]; then
mkdir ~/.ssh
chmod 700 ~/.ssh
fi

if [ -e ./"$key" ]; then
mv "$key" ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
else
echo "$key not found."
fi
