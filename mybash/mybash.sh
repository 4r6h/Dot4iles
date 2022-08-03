#!/usr/bin/env bash
wget -c https://raw.githubusercontent.com/4r6h/mybash/main/.bashrc
wget -c https://raw.githubusercontent.com/4r6h/mybash/main/.Xresources
mv -u .bashrc $HOME/.bashrc
mv -u .Xresources $HOME/.Xresources
source $HOME/.bashrc
