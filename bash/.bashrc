# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Load additional configuration files
for config in $HOME/.bashrc.d/*.bash ; do
	source $config
done
for config in $HOME/.bashrc.d/*.sh ; do
	source $config
done
unset -v config

# Use Vim
if [ -x /usr/bin/vim ] ; then
	export EDITOR=/usr/bin/vim
else
	export EDITOR=/usr/bin/vi
fi
set -o vi

# Use termite
if [ -x /usr/bin/termite ] ; then
	export TERMINAL=/usr/bin/termite
fi

# Use Firefox
if [ -x /usr/bin/firefox ] ; then
	export BROWSER=/usr/bin/firefox
fi

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# Infinite history.
HISTSIZE= HISTFILESIZE=

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# If set, a command name that is the name of a directory is executed
# as if it were the argument to the cd command. This option is only used by interactive shells.
shopt -s autocd

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Use ripgrep with fzf
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --smart-case --glob "!.git/*"'

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
