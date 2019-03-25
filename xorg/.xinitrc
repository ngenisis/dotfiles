# Disgusting hack to make my HiDPI work setup usable
if [ -n "`xdpyinfo | grep 5760x2160`" ] ; then
	xrandr --output DP-3 --primary --auto --output DP-4.1 --auto --scale 2x2 --right-of DP-3
	export GDK_SCALE=2
elif [ -n "`xdpyinfo | grep 3840x2160`" ] ; then
	export GDK_SCALE=2
elif [ -n "`xdpyinfo | grep 4480x1440`" ] ; then
	xrandr --output HDMI-1 --primary --auto --output DP-2 --auto --left-of HDMI-1
fi

setxkbmap -option "caps:escape"
xset dpms 0 0 0
numlockx &
exec i3

# vim: set filetype=sh :
