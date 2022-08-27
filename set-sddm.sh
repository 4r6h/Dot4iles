#!/usr/bin/env bash

dir1="/etc/"

dir2="/usr/share/sddm/themes/Sugar-Candy/"

sugar_candy=(
'https://raw.githubusercontent.com/4r6h/Dot4iles/main/mysddm/sddm.conf'
'https://raw.githubusercontent.com/4r6h/Dot4iles/main/mysddm/theme.conf'
)

paru -S sddm sddm-theme-sugar-candy-git --noconfirm --needed 

for theme in "${sugar_candy[@]}"; do
	sudo wget -cqP $dir1 $theme
done

sudo mv -u /etc/theme.conf $dir2 
sudo systemctl enable sddm
