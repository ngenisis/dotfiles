# History settings
HISTFILE=~/.local/share/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory histignoredups histignorespace

setopt autocd extendedglob nomatch globstarshort
unsetopt beep
bindkey -v
zstyle :compinstall filename '/home/ngenisis/.zshrc'

autoload -Uz compinit
compinit -d "${HOME}/.local/share/zsh/dumpfile"

# Source additional sh configs
for config in $HOME/.config/sh/*.sh ; do
	source $config
done

# Display "command not found" hook when running an unrecognized command
# Must first install the pkgfile package and update its database with pkgfile -u
# Enable pkgfile-update.timer for automatic updates
if [ -f /usr/share/doc/pkgfile/command-not-found.zsh ] ; then
	. /usr/share/doc/pkgfile/command-not-found.zsh
fi

# Enable fzf key bindings and completions
if [ -x /usr/bin/fzf ] ; then
	[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
	[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
fi

# Set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
else
	color_prompt=
fi

# Configure git prompt
GIT_PS1_SHOWDIRTYSTATE=yes
GIT_PS1_SHOWSTASHSTATE=yes
GIT_PS1_SHOWUNTRACKEDFILES=yes
GIT_PS1_SHOWUPSTREAM=verbose
GIT_PS1_HIDE_IF_PWD_IGNORED=yes

precmd () {
	local EXIT=$?
	local EXIT_PRE=

	if [ "$color_prompt" = yes ]; then
		PS1="%F{green}%n@%M%f%b:%B%F{blue}%~%F{magenta}"
		EXIT_PRE="%F{red}[$EXIT] "
	else
		PS1="%n@%M:%~"
		EXIT_PRE="[$EXIT] "
	fi

	if [ $EXIT != 0 ] ; then
		PS1="$EXIT_PRE$PS1"
	fi

	__git_ps1 "%B$PS1" "%f%b
%(!.#.$) "

	return $EXIT
}
