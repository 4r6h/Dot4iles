#!/usr/bin/env bash

dir="$HOME/.config/alacritty"
oba="$HOME/old_backups/alacritty"
ob="$HOME/old_backups"
conf="$HOME/.config"

set-alacritty() {

mkdir -p $dir
sudo pacman -Sy --noconfirm --needed wget alacritty

wget -cqP $dir https://raw.githubusercontent.com/4r6h/Dot4iles/main/AlacrittyConfig/alacritty.yml

wget -cqP $dir https://raw.githubusercontent.com/dracula/alacritty/master/dracula.yml

}

if [ -d $dir ]; then

	if [ ! -d $ob ]; then
		mkdir $ob
	fi

	if [ -d $oba ]; then
		rm -rf $oba
	fi
fi

if [ -d $dir ]; then
	mv $dir $ob
fi

if [ ! -d $conf ]; then
	mkdir $conf
fi
	set-alacritty
