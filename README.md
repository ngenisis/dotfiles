# My dotfiles for GNU/Linux

Each application's dotfiles are kept in a folder of the same name. For example, all of my `bash` configuration files are kept in the folder called `bash`. Each application's folder has the same tree structure as a user's `$HOME` directory, so to use my dotfiles for that application just copy them to the corresponding location in `$HOME` or create links in the corresponding locations. I prefer to use the latter approach and use [`stow`](https://www.gnu.org/software/stow/) to manage the symlinks. A typical usage would look something like this:

```
git clone git@github.com:ngenisis/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow -t ~ bash
```

See the `stow` man page for more details.

I've attempted to document any dependencies that are not present on a minimal [Arch Linux](https://wiki.archlinux.org/index.php/Arch_Linux) installation. If you experience issues with other distros or operating systems, let me know, as I would like these to be platform-agnostic as much as possible.

# Application-specific notes

## [`bash`](https://www.gnu.org/software/bash/)

Dependencies:
+ `openssh` (for `ssh-add` on login)
+ `xorg-xinit` and a working [Xorg](https://wiki.archlinux.org/index.php/Xorg) installation (for `startx` on login)

Optional dependencies:
+ [`vim` or `gvim`](https://github.com/vim/vim)
+ [`termite`](https://github.com/thestinger/termite/)
+ [`firefox`](https://www.mozilla.org/en-US/firefox/)
+ [`git`](https://github.com/git/git)
+ [`lf`](https://github.com/gokcehan/lf)<sup>[AUR](https://aur.archlinux.org/packages/lf/)</sup>
+ [`fzf`](https://github.com/junegunn/fzf)
+ [`bash-completion`](https://github.com/scop/bash-completion)
+ [`xdg-utils`](https://www.freedesktop.org/wiki/Software/xdg-utils/)
+ [`bat`](https://github.com/sharkdp/bat)

There is a known issue on Ubuntu where the prompt will not use my patched version of `git-prompt.sh`. I think this has to do with the order in which `bash_completion` and the patched `git-prompt.sh` get sourced in `.bashrc`, but I haven't had time to figure out why.

## [`vim`](https://github.com/vim/vim)

Optional dependencies:

+ [`gvim`](https://github.com/vim/vim) (or `vim` compiled with `+clipboard`)
+ [`git`](https://git-scm.com/)
+ [`fzf`](https://github.com/junegunn/fzf)
+ [`powerline-fonts`](https://github.com/powerline/fonts)
+ [`lf`](https://github.com/gokcehan/lf)<sup>[AUR](https://aur.archlinux.org/packages/lf/)</sup>

I use [`vim-plug`](https://github.com/junegunn/vim-plug) to manage Vim plugins from my `.vimrc`. If `plug.vim` is not present in `~/.vim/autoload` on startup, it will be downloaded automatically.

# [Git](https://git-scm.com/)

Dependencies:

+ [`vim` or `gvim`](https://github.com/vim/vim)

It is probably best to just use my `.gitconfig` as a starting point for your own configs unless you intend to impersonate me.

# [ranger](https://github.com/ranger/ranger)

Dependencies:

+ [ranger](https://github.com/ranger/ranger)
+ [fzf](https://github.com/junegunn/fzf)
+ [The Silver Searcher](https://github.com/ggreer/the_silver_searcher)

## Miscellaneous

Other packages I like to have:

```
chromium
discord
ffmpeg-libs
git-gui
kaccounts-providers
kate
keepass
lm_sensors
lm_sensors-sensord
vim
nextcloud-client
pv
qemu
steam
xorg-x11-drv-nvidia
```

Steam, Discord, the proprietary Nvidia driver, and the ffmpeg libraries require [RPM Fusion repos](https://rpmfusion.org/):

```
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```
