#			                   __ _ _      
#| |__   __ _ ___| |__    _ __  _ __ ___  / _(_) | ___ 
#| '_ \ / _` / __| '_ \  | '_ \| '__/ _ \| |_| | |/ _ \
#| |_) | (_| \__ \ | | | | |_) | | | (_) |  _| | |  __/
#|_.__/ \__,_|___/_| |_| | .__/|_|  \___/|_| |_|_|\___|
#                        |
#
# ~/.bash_profile
#

export PATH=/home/rafe/.scripts:$PATH
export EDITOR="vim"

[[ -f ~/.bashrc ]] && . ~/.bashrc
# startx on tty1 at login
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	 startx -- vt1 &> /dev/null
fi

# suppress the output of startx
[[ $(fgconsole 2>/dev/null) == 1 ]]

# map escape to caps lock
sudo -n loadkeys ~/.scripts/ttymap.kmap 2>/dev/null
