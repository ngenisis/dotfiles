# My dotfiles for Arch Linux

Each application's dotfiles are kept in a folder of the same name. Each application's folder has the same tree structure as a user's `$HOME` directory, so to use my dotfiles for that application just copy them to the corresponding location in `$HOME` or create symlinks in the corresponding locations. If you have `stow` installed, you can do this simply with:

```
make <application name>
```

To use my default configuration, just run `make`. To use all my dotfiles, run `make all`.

## Dependencies

+ `bash` and `zsh` require my `sh` dotfiles

+ `sh` requires `openssh` and `xorg-xinit` for login

+ `xorg` requires `xorg-xinit` and my `i3` dotfiles

+ `i3` requires compton for transparency, `feh` for setting the background image, `otf-font-awesome` for block icons, `pulsemixer` for the volume block, and `networkmanager` for the internet block

+ `termite` requires `ttf-hack` for the font
