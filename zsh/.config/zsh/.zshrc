# Source additional sh configs
for config in "${HOME}"/.config/sh/*.sh ; do
	source "${config}"
done

# History settings
HISTFILE=~/.local/share/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory histignoredups histignorespace

# Additional options
setopt autocd extendedglob nomatch globstarshort
unsetopt beep
bindkey -v

autoload -Uz compinit
compinit -d "${HOME}/.local/share/zsh/dumpfile"

# Change cursor depending on vi mode
zle-line-init zle-keymap-select () {
	case ${KEYMAP} in
		vicmd)		echo -ne '\e[1 q' ;;
		viins|main)	echo -ne '\e[5 q' ;;
	esac
}
zle -N zle-keymap-select
zle -N zle-line-init

# Report current directory to VTE
# if [[ ${TERM} == xterm-termite ]]; then
# 	. /etc/profile.d/vte.sh
# 	__vte_osc7
# fi

# Set a fancy prompt (non-color, unless we know we "want" color)
case "${TERM}" in
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

# Support for directory and prompt tracking in vterm
# https://github.com/akermu/emacs-libvterm#directory-tracking-and-prompt-tracking
vterm_prompt_end() {
	vterm_printf "51;A$(whoami)@$(hostname):$(pwd)";
}

precmd () {
	local EXIT=$?
	local EXIT_PRE=

	if [ "${color_prompt}" = yes ]; then
		PS1="%F{green}%n@%M%f%b:%B%F{blue}%~%F{magenta}"
		EXIT_PRE="%F{red}[${EXIT}] "
	else
		PS1="%n@%M:%~"
		EXIT_PRE="[${EXIT}] "
	fi

	if [ ${EXIT} != 0 ] ; then
		PS1="${EXIT_PRE}${PS1}"
	fi

	__git_ps1 "%B${PS1}" "%f%b
%(!.#.$) $(vterm_prompt_end)"

	return ${EXIT}
}
