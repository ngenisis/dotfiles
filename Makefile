default: config git gtk i3 lf sh termite vim xorg zsh

all: config bash git gtk i3 isync lf readline sh termite vim xdg xorg zsh

bash: config sh readline
	stow -R bash

git: config
	stow -R git

gtk: config
	stow -R gtk

i3: config
	stow -R i3

isync: config
	stow -R isync

lf: config
	stow -R lf

readline: config
	stow -R readline

sh: config
	stow -R sh

termite: config
	stow -R termite

vim: config
	stow -R vim

xdg: config
	stow -R xdg

xorg: i3 config
	stow -R xorg

zsh: config sh
	stow -R zsh

config: .stowrc

.stowrc:
	echo "--target=${HOME}" > .stowrc


