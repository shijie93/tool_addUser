#!/bin/bash

# 添加user

if [ $# -lt 2 ];then
    echo "Usage: ./addUser.sh user /home/user"
fi

USER=$1
HOMEDIR=$2

sudo groupadd $USER
sudo useradd -c "$USER" -d $HOMEDIR -g $USER -m -s /bin/bash $USER
sudo passwd $USER
