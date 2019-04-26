export EDITOR=vim
export VISUAL=vim
export TERMINAL=termite
export BROWSER=firefox

# Disable less history
export LESSHISTFILE=/dev/null

# Use qt5ct for Qt5 settings
if [ -x /usr/bin/qt5ct ] ; then
	export QT_QPA_PLATFORMTHEME="qt5ct"
fi

# HiDPI support for Qt apps
export QT_AUTO_SCREEN_SCALE_FACTOR=1

# Use ripgrep as default fzf command
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --smart-case --glob "!.git/*"'

# Use . as fzf completion trigger
export FZF_COMPLETION_TRIGGER='.'

# Taskwarrior settings
export TASKRC="${HOME}/.config/task/taskrc"
export TASKDATA="${HOME}/.local/share/task"

# Colors for less (i.e. man pages)
# See man terminfo
export LESS_TERMCAP_mb=$(tput bold; tput setaf 1)
export LESS_TERMCAP_md=$(tput bold; tput setaf 1)
export LESS_TERMCAP_me=$(tput sgr0; tput rmso; tput rmul)
export LESS_TERMCAP_se=$(tput sgr0; tput rmso; tput rmul)
export LESS_TERMCAP_so=$(tput bold; tput setab 4; tput setaf 3)
export LESS_TERMCAP_ue=$(tput sgr0; tput rmso; tput rmul)
export LESS_TERMCAP_us=$(tput bold; tput setaf 2)
