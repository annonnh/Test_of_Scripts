#!/bin/bash
cd /home/anon/Desktop/Scripts/Wallpaper
#Variable for define the name that feh will searc(from wallpaperset.txt)
NAME=$(cat /home/anon/Desktop/Scripts/Wallpaper/wallpaperset.txt)
#echo "$NAME"
#feh search for "$NAME" that return the name of the image, because of echo
feh --no-fehbg --bg-fill $echo "$NAME"
