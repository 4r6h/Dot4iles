#!/bin/bash

   Off='\033[0m'	     # Text Reset

   # Regular Colors
   Black='\033[0;30m'        # Black
   Red='\033[0;31m'          # Red
   Green='\033[0;32m'        # Green
   Yellow='\033[0;33m'       # Yellow
   Blue='\033[0;34m'         # Blue
   Purple='\033[0;35m'       # Purple
   Cyan='\033[0;36m'         # Cyan
   White='\033[0;37m'        # White

   # Bold
   BBlack='\033[1;30m'       # Black
   BRed='\033[1;31m'         # Red
   BGreen='\033[1;32m'       # Green
   BYellow='\033[1;33m'      # Yellow
   BBlue='\033[1;34m'        # Blue
   BPurple='\033[1;35m'      # Purple
   BCyan='\033[1;36m'        # Cyan
   BWhite='\033[1;37m'       # White


ob="$HOME/old_backups"

confs=(
"$HOME/.bashrc"
"$HOME/.Xresources"
"$HOME/.aliases_4r6h"
)

configs=(
'https://raw.githubusercontent.com/4r6h/Dot4iles/main/mybash/.bashrc'
'https://raw.githubusercontent.com/4r6h/Dot4iles/main/mybash/.Xresources'
'https://raw.githubusercontent.com/4r6h/Dot4iles/main/mybash/.aliases_4r6h'
)


if [ ! -d $ob ]; then

	mkdir $ob
else
	if [ -f $ob/.bashrc ]; then

		rm $ob/.bashrc
	fi

	if [ -f $ob/.Xresources ]; then

		rm $ob/.Xresources
	fi

	if [ -f $ob/.aliases_4r6h ]; then

		rm $ob/.aliases_4r6h
	fi
fi


for conf in "${confs[@]}"; do

	if [ -f $conf ]; then

		echo -e "\n${BRed}MOVING ${BGreen}old $conf to ${BRed}$ob${Off}"

		mv $conf $ob
	fi
done


for config in "${configs[@]}"; do

	echo -e "\n${BGreen}DOWNLOADING NEW configs from \n${BYellow}$config \n${BRed}and moving configs to ${BBlue}$HOME${Off}"

	wget -cqP $HOME $config
done
