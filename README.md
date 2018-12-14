My dotfiles for [Fedora KDE 29](https://spins.fedoraproject.org/kde/).

Needed packages:

```
fzf
git
kdiff3
powerline-fonts
ranger
vim
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
neovim
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
