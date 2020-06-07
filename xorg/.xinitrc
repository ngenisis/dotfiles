# Wake up all monitors
	xrandr --auto

# If 2160p (4K) monitor is connected, upscale GTK windows
	if [ -n "`xdpyinfo | grep '.*x2160'`" ] ; then
		export GDK_SCALE=2
	fi

# Map Caps Lock to Esc when pressed, Ctrl when held
	setxkbmap -option 'caps:ctrl_modifier'
	xcape -e 'Caps_Lock=Escape'

# Disable middle click
	xmodmap -e "pointer = 1 0"

# Disable dpms
	xset dpms 0 0 0
	xset s off -dpms

# Notification server
	dunst &

# Enable numlock
	numlockx &

# Load default display configuration
	autorandr --change

# Start i3
	exec i3

# vim: set filetype=sh :
