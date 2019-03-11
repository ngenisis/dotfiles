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
compinit

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
