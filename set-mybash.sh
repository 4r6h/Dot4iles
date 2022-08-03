#!/usr/bin/env bash
wget -c https://raw.githubusercontent.com/4r6h/Dot4iles/main/mybash/.bashrc
wget -c https://raw.githubusercontent.com/4r6h/Dot4iles/main/mybash/.Xresources
mv -u .bashrc $HOME/.bashrc
mv -u .Xresources $HOME/.Xresources
source $HOME/.bashrc
