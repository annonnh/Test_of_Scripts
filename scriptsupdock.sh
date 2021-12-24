#!/bin/bash

#Scripts for display information about the system in upper dock
#You hate to install the package pamixer
#You have to install nerd_fonts to work the symbols(sudo pacman -S ttf-nerd-fonts-symbols)
#You have to install xbinkeys to work the volume change(sudo pacman -S xbindkeys)

#Setting varible to show in dock
#######################################################
DATE=$(date +"%A-%D")
HOURS=$(date +%T%p)
VOL=$(pamixer --get-volume)
MEMINFO=$(free -h | awk '(NR==2){ print $3 }')
CPU=$(cat /proc/loadavg | awk '{print $1}')
#Show each variable that was set
echo "  |  CPU: $CPU |  MEM: $MEMINFO | "
######################################################

#Controling volume with symbols
################################################
if [ "$VOL" == "0" ];
then
	echo "婢 VOLUME: $VOL%"
fi

for i in {1..10}; do
	if [ "$VOL" == "$i" ];
	then
		echo " VOLUME: $VOL%"
	fi
done

for i in {11..20}; do
	if [ "$VOL" == "$i" ];
	then
		echo " VOLUME: $VOL%"
	fi
done

for i in {21..40}; do
	if [ "$VOL" == "$i" ];
	then
		echo "墳 VOLUME: $VOL%"
	fi
done

for i in {41..100}; do
	if [ "$VOL" == "$i" ];
	then
		echo " VOLUME: $VOL%"
	fi
done

for i in {101..150}; do
	if [ "$VOL" == "$i" ];
	then
		echo "Don't make that"
	fi
done
###############################################

echo "|  DATE: $DATE |  TIME: $HOURS "
