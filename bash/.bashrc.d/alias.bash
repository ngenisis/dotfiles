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
	alias p='sudo pacman --color always'
elif [ -x /usr/bin/dnf ] ; then
	alias p='sudo dnf'
elif [ -x /usr/bin/apt ] ; then
	alias p='sudo apt'
fi

if [ -x /usr/bin/bat ] ; then
	alias cat=bat
fi

if [ -x /usr/bin/mutt ] ; then
	alias m=mutt
fi

alias e=$EDITOR
