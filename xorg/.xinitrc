if [ -n "`xdpyinfo | grep '.*x2160'`" ] ; then
	export GDK_SCALE=2
fi

setxkbmap -option "caps:escape"
xset dpms 0 0 0
xset s off -dpms
numlockx &
autorandr --change && exec i3

# vim: set filetype=sh :
