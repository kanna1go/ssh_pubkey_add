#!/bin/bash
set -eu

if [ ! -e ~/.ssh ]; then
mkdir .ssh
chmod 700 .ssh
fi

if [ -e ./id_rsa.pub ]; then
cat id_rsa.pub > .ssh/authorized_keys
chmod 600 .ssh/authorized_keys
rm -f id_rsa.pub
else
echo "id_rsa.pub not found."
fi