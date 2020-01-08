# Default apps
export EDITOR=vim
export VISUAL=vim
export TERMINAL=termite
export BROWSER=firefox

# Locations
export WALLPAPER="${HOME}/Pictures/Wallpapers/wallpaper"

# XDG Base Directory
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"

# Unclutter the home directory
export CARGO_HOME="${HOME}/.local/share/cargo"
export GOPATH="${HOME}/.local/share/go"
export TASKRC="${HOME}/.config/task/taskrc"
export TASKDATA="${HOME}/.local/share/task"

# Disable less history
export LESSHISTFILE=/dev/null

# HiDPI support for Qt apps
export QT_AUTO_SCREEN_SCALE_FACTOR=1

# Use ripgrep as default fzf command
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --smart-case --glob "!.git/*"'

# Colors for less (i.e. man pages)
# See man terminfo
export LESS_TERMCAP_mb=$(tput bold; tput setaf 1)
export LESS_TERMCAP_md=$(tput bold; tput setaf 1)
export LESS_TERMCAP_me=$(tput sgr0; tput rmso; tput rmul)
export LESS_TERMCAP_se=$(tput sgr0; tput rmso; tput rmul)
export LESS_TERMCAP_so=$(tput bold; tput setab 4; tput setaf 3)
export LESS_TERMCAP_ue=$(tput sgr0; tput rmso; tput rmul)
export LESS_TERMCAP_us=$(tput bold; tput setaf 2)
