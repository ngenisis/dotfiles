HISTFILE=~/.local/share/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch
unsetopt beep
bindkey -v
zstyle :compinstall filename '/home/ngenisis/.zshrc'

autoload -Uz compinit
compinit

# Source additional sh configs
for config in $HOME/.config/sh/*.sh ; do
	source $config
done
