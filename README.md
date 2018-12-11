My dotfiles for [Fedora KDE 29](https://spins.fedoraproject.org/kde/).

Packages I use:

```
chromium
discord
git
git-gui
kaccounts-providers
kate
kdiff3
keepass
neovim
nextcloud-client
powerline-fonts
pv
qemu
ranger
steam
vim
xorg-x11-drv-nvidia
```

Need to enable RPM Fusion repos:

```
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```