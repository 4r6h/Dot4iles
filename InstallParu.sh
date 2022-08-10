#!/usr/bin/env bash

if [ ! -f /bin/paru* ]; [ ! -f /usr/bin/paru* ]; then
	sudo pacman -S --noconfirm --needed git base base-devel
	git clone https://aur.archlinux.org/paru.git
	cd paru
	makepkg -si --noconfirm --needed
echo"-------------------------------------"
echo"-----------Paru Installed------------"
echo"-------------------------------------"
	rm -rf paru
else 
	echo "Paru is already installed"
fi
