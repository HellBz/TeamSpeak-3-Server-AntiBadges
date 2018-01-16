#!/bin/bash

if [ "$1" = "activate" ]
then
screen -A -m -d -S antibadges php index.php
echo "[AB] activated."
elif [ "$1" = "deactivate" ]
then
pkill -f antibadges
echo "[AB] deactivated"
else 
 echo "Command does not exist."
fi
