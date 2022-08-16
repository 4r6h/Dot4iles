#!/usr/bin/env bash

scripts() {

configs=(
'https://raw.githubusercontent.com/4r6h/Dot4iles/main/mybash/.bashrc'
'https://raw.githubusercontent.com/4r6h/Dot4iles/main/mybash/.Xresources'
'https://raw.githubusercontent.com/4r6h/Dot4iles/main/mybash/aliases_4r6h'
)

for config in "${configs[@]}"; do
	wget -c -q "$config"
done

}

set-bash() {
mv -u .bashrc $HOME/.bashrc
mv -u .Xresources $HOME/.Xresources
mv -u aliases_4r6h $HOME/.aliases_4r6h
source $HOME/.bashrc
}

if [ ! -d ~/old_backups ]; then
	mkdir ~/old_backups

elif [ -f ~/.bashrc ]; then
	mv ~/.bashrc ~/old_backups/

elif [ -f ~/.Xresources ]; then
	mv ~/.Xresources ~/old_backups/

elif [ -f ~/.aliases_4r6h ]; then
	mv ~/.aliases_4r6h ~/old_backups/

else
	scripts
	set-bash
fi


