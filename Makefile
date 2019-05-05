default: config git i3 lf mutt sh task termite vim xorg zsh

all: config bash git i3 lf mutt readline sh task termite vim xorg zsh

bash: config sh readline
	stow -v -R bash

git: config
	stow -v -R git

i3: config
	stow -v -R i3

lf: config
	stow -v -R lf

mutt: config
	stow -v -R mutt
	systemctl --user enable --now mbsync.timer

readline: config
	stow -v -R readline

sh: config
	stow -v -R sh

task: config
	stow -v -R task

termite: config
	stow -v -R termite

vim: config
	stow -v -R vim

xorg: i3 config
	stow -v -R xorg

zsh: config sh
	stow -v -R zsh

config: .stowrc

.stowrc:
	echo "--target=${HOME}" > .stowrc


