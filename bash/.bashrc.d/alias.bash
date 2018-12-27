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

# Package manager alias
if [ -x /usr/bin/pacman ] ; then
	alias p='sudo pacman'
elif [ -x /usr/bin/dnf ] ; then
	alias p='sudo dnf'
elif [ -x /usr/bin/apt ] ; then
	alias p='sudo apt'
fi

alias r='ranger-cd'

# Vim alias. Tries to use neovim, vim, and then vi, in that order
if [ -x /usr/bin/nvim ]; then
	alias v='nvim'
elif [ -x /usr/bin/vim ]; then
	alias v='vim'
else
	alias v='vi'
fi
