#!/usr/bin/env bash

while true 

	do

read -r -p " Please! Write your username : " un

if id "$un" >/dev/null 2>&1; then

#read -r -p " Please! Write your full name : " fn
#read -r -p " Please! Write your home directory name : " hd

homedir=$( getent passwd "$un" | cut -d: -f6 )

homedir=$(eval echo ~${un})

home=$(echo ${homedir})

#echo "$home"

if [ $home = ~$un ]; then
	echo "	username not found
	Your Home Directory Should be in /home/$un
	Please check it first then run the script"

elif [ $home = "/home/$un" ]; then
	echo "found"

elif [ $un  = "root" ]; then
	echo "you can't install this for root user"

else [ $home = "/home/$un" ]; >/dev/null
	echo "please check your username first"
fi
else 
	echo "User not found or you don't have a user in $un name"
fi

#if [ "$homedir" = "0" ]; then
#else 
#if [ ! -d $homedir ]; >/dev/null; then
#	echo "not found!!"
#
#elif [ -d $homedir ]; >/dev/null then
#	echo "not found!!"
#
#elif [ -d $homedir ]; then
#	echo "found!!"
#
#else
#	echo "Check your username"

#fi
	done
