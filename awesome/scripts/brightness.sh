#!/bin/sh

brightness=$(brightnessctl | awk 'NR==2 {print $NF}' | sed 's/[^0-9]//g')

echo " ${brightness}%"
