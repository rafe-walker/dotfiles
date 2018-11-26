# startx on tty1 at login
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	 startx -- vt1 &> /dev/null
fi

# suppress the output of startx
[[ $(fgconsole 2>/dev/null) == 1 ]]
