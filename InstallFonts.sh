#!/usr/bin/env bash

if [ ! -x /usr/bin/paru* ]; then

elif [ ! -f InstallParu.sh ]; then

	wget -c https://raw.githubusercontent.com/4r6h/Dot4iles/main/InstallParu.sh;chmod +x InstallParu.sh;./InstallParu.sh

else 
	wget --no-check-certificate https://raw.githubusercontent.com/fahadahammed/linux-bangla-fonts/master/font.sh -O font.sh;chmod +x font.sh;bash font.sh;rm font.sh;paru -S --needed --noconfirm nerd-fonts-jetbrains-mono ttf-ms-fonts ttf-ubuntu-font-family ttf-roboto ttf-roboto-mono

fi
