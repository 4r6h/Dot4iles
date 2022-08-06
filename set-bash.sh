#!/usr/bin/env bash

if [ ! -d ~/old_backups ]; then
	mkdir ~/old_backups

elif [ -f ~/.bashrc ]; then
	mv ~/.bashrc ~/old_backups/

elif [ -f ~/.Xresources ]; then
	mv ~/.Xresources ~/old_backups/

elif [ -f ~/.aliases_4r6h ]; then
	mv ~/.aliases_4r6h ~/old_backups/

else

wget -c https://raw.githubusercontent.com/4r6h/Dot4iles/main/mybash/.bashrc
wget -c https://raw.githubusercontent.com/4r6h/Dot4iles/main/mybash/.Xresources
wget -c https://raw.githubusercontent.com/4r6h/Dot4iles/main/mybash/aliases_4r6h

mv -u .bashrc $HOME/.bashrc
mv -u .Xresources $HOME/.Xresources
mv -u aliases_4r6h $HOME/.aliases_4r6h
source $HOME/.bashrc

fi


