#!/bin/bash
if [ $# -eq 0 ]; 
	then
	echo "Usage : trans.sh [sol/tran]"

elif [ "$1" == "sol" ]; 
	then
	gconftool -s -t string /apps/gnome-terminal/profiles/Default/background_type solid 

elif [ "$1" == "tran" ]; 
	then
	gconftool -s -t string /apps/gnome-terminal/profiles/Default/background_type transparent

else
	echo "Wrong argument"
fi


