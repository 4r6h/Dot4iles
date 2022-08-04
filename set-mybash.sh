#!/usr/bin/env bash
wget -c https://raw.githubusercontent.com/4r6h/Dot4iles/main/mybash/.bashrc
wget -c https://raw.githubusercontent.com/4r6h/Dot4iles/main/mybash/.Xresources
wget -c https://raw.githubusercontent.com/4r6h/Dot4iles/main/mybash/aliases_4r6h
mv -u .bashrc $HOME/.bashrc
mv -u .Xresources $HOME/.Xresources
mv -u aliases_4r6h $HOME/.aliases_4r6h
source $HOME/.bashrc
