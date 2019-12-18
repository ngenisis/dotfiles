# Wake up all monitors
	xrandr --auto

# If 2160p (4K) monitor is connected, upscale GTK windows
	if [ -n "`xdpyinfo | grep '.*x2160'`" ] ; then
		export GDK_SCALE=2
	fi

# Map caps lock to additional escape
	setxkbmap -option "caps:escape"

# Disable middle click
	xmodmap -e "pointer = 1 0"

# Disable dpms
	xset dpms 0 0 0
	xset s off -dpms

# Enable numlock
	numlockx &

# Load default display configuration and start i3
	autorandr --change && exec i3

# vim: set filetype=sh :
