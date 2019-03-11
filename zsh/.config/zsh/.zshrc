HISTFILE=~/.local/share/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch
unsetopt beep
bindkey -v
zstyle :compinstall filename '/home/ngenisis/.zshrc'

autoload -Uz compinit
compinit
