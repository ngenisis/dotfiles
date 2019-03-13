_sh=$(basename $SHELL)

# Enable fzf key bindings and completions
if [ -x /usr/bin/fzf ] ; then
	[ -f /usr/share/fzf/key-bindings.${_sh} ] && source /usr/share/fzf/key-bindings.${_sh}
	[ -f /usr/share/fzf/completion.${_sh} ] && source /usr/share/fzf/completion.${_sh}
fi

# Display "command not found" hook when running an unrecognized command
# Must first install the pkgfile package and update its database with pkgfile -u
# Enable pkgfile-update.timer for automatic updates
if [ -f /usr/share/doc/pkgfile/command-not-found.${_sh} ] ; then
	. /usr/share/doc/pkgfile/command-not-found.${_sh}
fi
