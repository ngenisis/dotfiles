# Enable color
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls -hN --color=auto --group-directories-first'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias o='xdg-open'
alias sa='sudo apt'
alias sag='sudo apt-get'
alias sdnf='sudo dnf'
alias r='ranger-cd'

# Vim alias. Tries to use neovim, vim, and then vi, in that order
if [ -x /usr/bin/nvim ]; then
	alias v='nvim'
elif [ -x /usr/bin/vim ]; then
	alias v='vim'
else
	alias v='vi'
fi
