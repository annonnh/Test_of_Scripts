#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


# open script of date
/home/anon/Desktop/Scripts/xsetr.sh &

# program for set volume
xbindkeys_config &

# layout of the keyboard
setxkbmap -layout br &

firefox &

# Open the script that set the wallpaper
/home/anon/Desktop/Scripts/Wallpaper/wallpaper_set_xinit.sh  &

# open the script that mount hd
#/home/anon/Desktop/Scripts/mn.sh &

# execute the wm(windows manager) dwm
exec dwm




