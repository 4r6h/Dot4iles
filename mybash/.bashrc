#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Add bash aliases.
if [ -f ~/aliases_4r6h ]; then
    source ~/aliases_4r6h
fi

#csr
colorscript -e awk-rgb-test
echo "WELLCOME TO RAHAT'S BASH CONIG"

###STARSHIP-BASH-PROMPT###
eval "$(starship init bash)"


PS1='[\u@\h \W]\$ '
