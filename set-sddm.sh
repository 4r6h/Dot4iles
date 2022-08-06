#!/usr/bin/env bash
paru -S --noconfirm --needed sddm sddm-theme-sugar-candy-git
wait
sudo systemctl enable sddm

wget https://raw.githubusercontent.com/4r6h/Dot4iles/main/mysddm/sddm.conf

wget https://raw.githubusercontent.com/4r6h/Dot4iles/main/mysddm/theme.conf
wait
sudo mv -u sddm.conf /etc/sddm.conf && sudo mv -u theme.conf /usr/share/sddm/themes/Sugar-Candy/theme.conf
