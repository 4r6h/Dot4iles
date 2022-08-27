#!/usr/bin/env bash

ob="$HOME/old_backups/"
obr="$HOME/old_backups/rofi"
cr="$HOME/.config/rofi"

theme1=(
'https://raw.githubusercontent.com/4r6h/Dot4iles/main/myrofi/rofi/config.rasi'
)

if [ -d $obr ]; then
	rm -rf $obr
fi

if [ -d $cr ]; then

	if [ ! -d $ob ]; then
		mkdir $ob
	fi
		mv $cr $ob
fi

if [ ! -d ~/.config ]; then
	mkdir -P $cr
fi

for theme in "${theme1[@]}"; do
	wget -cqP $cr $theme
done
