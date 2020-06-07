# Shell side-configuration for vterm:
# https://github.com/akermu/emacs-libvterm#shell-side-configuration
function vterm_printf;
	printf "\e]%s\e\\" "$1"
end

# Support for directory and prompt tracking in vterm
# https://github.com/akermu/emacs-libvterm#directory-tracking-and-prompt-tracking
function vterm_prompt_end;
    vterm_printf '51;A'(whoami)'@'(hostname)':'(pwd)
end
functions -c fish_prompt vterm_old_fish_prompt
function fish_prompt --description 'Write out the prompt; do not replace this. Instead, put this at end of your file.'
    # Remove the trailing newline from the original prompt. This is done
    # using the string builtin from fish, but to make sure any escape codes
    # are correctly interpreted, use %b for printf.
    printf "%b" (string join "\n" (vterm_old_fish_prompt))
    vterm_prompt_end
end