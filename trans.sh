#!/bin/bash
# trans.sh - Make the terminal solid or transparent
# Copyright (C) 2015 Abhilash Mhaisne, abhilashmhaisne@gmail.com
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.

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


