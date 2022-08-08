#!/usr/bin/env bash

read -r -p " Please! Write your username : " un
#read -r -p " Please! Write your full name : " fn
#read -r -p " Please! Write your home directory name : " hd
homedir=$( getent passwd "$un" | cut -d: -f6 )
while true 
	do
if [ ! -d $homedir ]; >/dev/null; then
	echo "not found!!"

elif [ -d $homedir ]; >/dev/null then
	echo "not found!!"

elif [ -d $homedir ]; then
	echo "found!!"

else
	echo "Check your username"
fi
break
	done
