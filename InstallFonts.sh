#!/usr/bin/env bash

installParu() {
	sudo pacman -S --noconfirm --needed git base base-devel
	git clone https://aur.archlinux.org/paru.git
	cd paru
	makepkg -si --noconfirm --needed
echo"-------------------------------------"
echo"-----------Paru Installed------------"
echo"-------------------------------------"
	rm -rf paru
}

fonts() {
	paru -S --needed --noconfirm nerd-fonts-jetbrains-mono ttf-ms-fonts ttf-ubuntu-font-family ttf-roboto ttf-roboto-mono
	wget -c -q --no-check-certificate https://raw.githubusercontent.com/fahadahammed/linux-bangla-fonts/master/font.sh -O font.sh
	chmod +x font.sh
	bash font.sh
	rm font.sh
}

if [ ! -x /bin/paru* ]; [ ! -x /usr/bin/paru* ]; then
	
	InstallParu
	fonts
else
	echo "Paru is already installed"
	fonts
fi

