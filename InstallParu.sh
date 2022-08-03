#!/usr/bin/env bash
sudo pacman -S --noconfirm --needed git base base-devel;git clone https://aur.archlinux.org/paru.git;cd paru;makepkg -si --noconfirm --needed
echo"-------------------------------------"
echo"-----------Paru Installed------------"
echo"-------------------------------------"
rm -rf paru
