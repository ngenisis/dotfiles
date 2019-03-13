# Use Vim
if [ -x /usr/bin/vim ] ; then
	export EDITOR=/usr/bin/vim
	export VISUAL=/usr/bin/vim
else
	export EDITOR=/usr/bin/vi
	export VISUAL=/usr/bin/vi
fi

# Use termite
if [ -x /usr/bin/termite ] ; then
	export TERMINAL=/usr/bin/termite
fi

# Use Firefox
if [ -x /usr/bin/firefox ] ; then
	export BROWSER=/usr/bin/firefox
fi

# Disable less history
export LESSHISTFILE=/dev/null

# Use qt5ct for Qt5 settings
if [ -x /usr/bin/qt5ct ] ; then
	export QT_QPA_PLATFORMTHEME="qt5ct"
fi

# HiDPI support for Qt apps
export QT_AUTO_SCREEN_SCALE_FACTOR=1

# Use ripgrep with fzf
if [ -x /usr/bin/rg ] ; then
	export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --smart-case --glob "!.git/*"'
fi
