#!/usr/bin/env bash
mkdir $HOME/.config/alacritty/
paru -S --needed --noconfirm alacritty;wget https://raw.githubusercontent.com/4r6h/Dot4iles/main/AlacrittyConfig/alacritty.yml;wget https://raw.githubusercontent.com/dracula/alacritty/master/dracula.yml;mv -u alacritty.yml dracula.yml $HOME/.config/alacritty/
