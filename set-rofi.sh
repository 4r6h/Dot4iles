#!/usr/bin/env bash

if [ ! -d ~/old_backups ]; then
	mkdir ~/old_backups

elif [ -d ~/.config/rofi ]; then
	mv ~/.config/rofi ~/old_backups/ 

elif [ ! -d ~/.config ]; then
	mkdir -P ~/.config/rofi

else

https://raw.githubusercontent.com/4r6h/Dot4iles/main/myrofi/rofi/config.rasi
mv -u config.rasi $HOME/.config/rofi/

fi
