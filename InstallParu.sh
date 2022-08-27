#!/usr/bin/env bash

InstallParu() {
	sudo pacman -S --noconfirm --needed git base base-devel
	git clone https://aur.archlinux.org/paru.git
	cd paru
	makepkg -si --noconfirm --needed
	rm -rf paru
	echo"-----------Paru Installed------------"
}

if [ ! -x /bin/paru*  -o  ! -x /usr/bin/paru* ]; then

	InstallParu
else 
	echo "Paru is already installed"
fi
