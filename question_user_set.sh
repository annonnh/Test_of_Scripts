#!/bin/bash
cd /home/anon/Desktop/Scripts/Wallpaper
##################################################################################
Choose your wallpaper, you have to put the images in this folder or type the path
##################################################################################
echo "
"
echo "########################################"
echo "Choose one wallpaper for set in your pc:"
echo "########################################"
sleep 2
ls
read wallpaper
#The script chose the comand echo, instead the word echo because $
feh --no-fehbg --bg-fill $echo"$wallpaper"
echo $wallpaper > ~/Desktop/Scripts/Wallpaper/wallpaperset.txt

