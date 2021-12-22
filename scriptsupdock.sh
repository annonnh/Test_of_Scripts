#!/bin/bash

#Scripts for display information about the system in upper dock
#You hate to install the package pamixer
DATE=$(date)
VOL=$(pamixer --get-volume-human)
MEMINFO=$(free -h | awk '(NR==2){ print $3 }')
CPU=$(cat /proc/loadavg | awk '{print $1}')
#Show each variable that was set
echo " | CPU: $CPU | MEM: $MEMINFO | VOLUME: $VOL | DATE: $DATE |  " 
