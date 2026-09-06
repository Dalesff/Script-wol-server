#!/bin/bash

IP=""
MAC=""
USER=""

if ping -c 1 -W 1 "$IP" > /dev/null 2>&1; then
    echo "Apagando..."
    ssh "$USER@$IP" "sudo -n /usr/sbin/poweroff"
else
    echo "Encendiendo..."
    wakeonlan "$MAC"
fi
