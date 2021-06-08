#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


#startx automatically if online
if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
    . startx
    logout
fi
