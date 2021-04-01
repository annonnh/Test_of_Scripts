#!/bin/bash
while [ 1 -eq 1 ]; do
less /proc/bus/input/devices | grep Gamepad > /home/anonlindoo/Desktop/escritaatual.txt
cmp -s escritaatual.txt referencia.txt
x="$echo $?"
if [ $x == 0 ];
then 
steam
fi
done





