# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# Add existing ssh keys to ssh-agent
eval "$(ssh-agent)"
ssh-add

# Enable Num lock on login
setleds +num

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
