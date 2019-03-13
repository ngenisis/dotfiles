# Source additional sh configs
for config in $HOME/.config/sh/*.sh ; do
	source $config
done

# History settings
HISTCONTROL=ignoreboth
HISTSIZE= HISTFILESIZE=
setopt -s histappend

# Additional options
shopt -s checkwinsize globstar autocd

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
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

export PROMPT_COMMAND=__prompt_command

function __prompt_command() {
	local EXIT=$?
	local RED='\[\033[01;31m\]'
	local GREEN='\[\033[01;32m\]'
	local BLUE='\[\033[01;34m\]'
	local MAGENTA='\[\033[01;35m\]'
	local NONE='\[\033[00m\]'
	local EXIT_PRE=

	if [ "$color_prompt" = yes ]; then
		PS1="$GREEN\u@\h$NONE:$BLUE\w$MAGENTA"
		EXIT_PRE="$RED[$EXIT] "
	else
		PS1="\u@\h:\w"
		EXIT_PRE="[$EXIT] "
	fi

	if [ $EXIT != 0 ] ; then
		PS1="$EXIT_PRE$PS1"
	fi

	__git_ps1 "$PS1" "$NONE\n\$ "

	return $EXIT
}

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac
