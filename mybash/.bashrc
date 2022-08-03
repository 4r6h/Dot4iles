#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#################################################
       ####ALIASES ADDED BY 4R6H/RAHAT####

#alias ll="ls -lah --color=auto"
alias ll="lsd -lah"
alias cc="clear"
alias upd="sudo updatedb"
alias wget="wget -c"

###For PACMAN###
alias p="sudo pacman -S"
alias prm="sudo pacman -Rns"
alias ps="pacman -Ss --color=auto"
alias uppac="sudo pacman -Syyu --noconfirm"
alias clup='sudo pacman -Rns $(pacman -Qtdq)'
alias ddb="sudo rm -rf /var/lib/pacman/db.lck"

###For PARU###
alias a="paru -S"
alias arm="paru -Rns"
alias as="paru -Ss --color=auto"
alias upaur="paru -Syua --noconfirm"
alias upall="paru -Syyu --noconfirm"

###For BASH###
alias vbc="vim $HOME/.bashrc"
alias sbrc="source $HOME/.bashrc"

###For FISH###
alias vfc="vim $HOME/.config/fish/config.fish"
alias sfrc="source $HOME/.config/fish/config.fish"

###For ALACRITTY###
alias val="vim $HOME/.config/alacritty/alacritty.yml"

###For SDDM & SDDM SUGAR CANDY THEME###
alias vsc="sudo vim /usr/share/sddm/themes/Sugar-Candy/theme.conf"
alias cpsddm="sudo cp /usr/lib/sddm/sddm.conf.d/default.conf /etc/sddm.conf"
alias vsddm="sudo vim /etc/sddm.conf"

###For COLORSCRIPT###
alias cs="colorscript"
alias csr="colorscript random"
colorscript -e awk-rgb-test
echo "WELLCOME TO RAHAT'S BASH CONIG"

###STARSHIP-BASH-PROMPT###
eval "$(starship init bash)"

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
#alias cp="cp -i"
#alias mv='mv -i'
#alias rm='rm -i'
#################################################

PS1='[\u@\h \W]\$ '
