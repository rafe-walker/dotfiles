# _               _              
#| |__   __ _ ___| |__  _ __ ___ 
#| '_ \ / _` / __| '_ \| '__/ __|
#| |_) | (_| \__ \ | | | | | (__ 
#|_.__/ \__,_|___/_| |_|_|  \___|
# 
# ~/.bashrc
#
stty -ixon # disable ctrl-s and ctrl-q
HISTSIZE=HISTFILESIZE= #infinite history
# activate vim mode
set -o vi

# Alias's
#-------------#
alias ls="exa --group-directories-first "
alias v=vim
alias sv="sudo vim"
alias SS="sudo systemctl"
alias p="sudo pacman"
alias grep="grep --color=auto"

# Shortcut Alias's
alias cfb="vim ~/.bash_profile"
alias cfbrc="vim ~/.bashrc"
alias cfi3="vim ~/.config/i3/config"
alias cfxr="vim ~/.Xresources"



# If not running interactively, don't do anything 
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '
