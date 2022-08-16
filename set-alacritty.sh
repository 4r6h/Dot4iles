#!/usr/bin/env bash

set-alacritty() {

mkdir -P $HOME/.config/alacritty/

paru -Sy --noconfirm --needed wget alacritty

wget https://raw.githubusercontent.com/4r6h/Dot4iles/main/AlacrittyConfig/alacritty.yml

wget https://raw.githubusercontent.com/dracula/alacritty/master/dracula.yml

mv -u alacritty.yml dracula.yml $HOME/.config/alacritty/

}

if [ ! -d ~/old_backups ]; then
	mkdir ~/old_backups

elif [ ! -d ~/.config ]; then
	mkdir ~/.config

elif [ -d ~/.config/alacritty ]; then
	mv ~/.config/alacritty ~/old_backups/

else
	set-alacritty

fi




