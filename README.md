My dotfiles for [Fedora KDE 29](https://spins.fedoraproject.org/kde/).

Each application's dotfiles are kept in a folder of the same name. For example, all of my bash configuration files are kept in the folder called `bash`. Each application's folder has the same tree structure as a user's `$HOME` directory, so to use my dotfiles for that application just copy them to the corresponding location in `$HOME` or create links in the corresponding locations. I prefer to use the latter approach and use the `stow` tool to manage the symlinks. A typical usage would look something like this:

```
git clone git@github.com:ngenisis/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow -t ~ bash
```

See the stow man page for more details.

Needed packages:

```
fzf
git
powerline-fonts
ranger
the_silver_searcher
neovim
```

Also need [Vundle](https://github.com/VundleVim/Vundle.vim) to manage Vim plugins:

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

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
