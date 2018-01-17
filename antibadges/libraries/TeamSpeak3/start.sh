
#!/bin/bash

x="\x1b["
R=$x"38;5;7m"
AB=$x"38;05;86m"
FL=$x"38;05;204m"
A=$x"38;05;193m"
echo -e "[$AB AB $R] $A Please wait..$R"
sleep 1
apt-get install nano screen make php5-common libapache2-mod-php5 -y
clear
sleep 1

if [ "$1" = "activate" ]
then
screen -A -m -d -S antibadges php index.php
echo -e "[$AB AB $R] $A Activated $R"
elif [ "$1" = "deactivate" ]
then
pkill -f antibadges
echo -e "[$AB AB $R] $FL Deactivated $R"
else
 echo "Ouh.. Command does not exist."
fi
