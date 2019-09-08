default: config git i3 lf mutt sh task termite vim xorg zsh

all: config bash git i3 lf mutt readline sh task termite vim xdg xorg zsh

bash: config sh readline
	stow -R bash

git: config
	stow -R git

i3: config
	stow -R i3

lf: config
	stow -R lf

mutt: config
	stow -R mutt
	systemctl --user enable --now mbsync.timer

readline: config
	stow -R readline

sh: config
	stow -R sh

task: config
	stow -R task

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


