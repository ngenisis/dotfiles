# Disgusting hack to make my HiDPI work setup usable
if [ -n "`xdpyinfo | grep 5760x2160`" ] ; then
	xrandr --output DP-3 --auto --output DP-4.1 --auto --scale 2x2 --right-of DP-3
	export GDK_SCALE=2
elif [ -n "`xdpyinfo | grep 3840x2160`" ] ; then
	export GDK_SCALE=2
fi

exec i3
/usr/bin/setxkbmap -option "caps:swapescape"
