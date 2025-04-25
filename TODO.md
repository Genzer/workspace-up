# TODO

This document contains issues unresolved from the last Macbook migration.

> NOTE:
> todo.txt Format is being used here.

## Things Has To Do Manually

Has to log into Google Drive first to select the folders.
Has to log into Apple Store (even if AppleID is logged in). Can be done with `mas`.
Has to open applications and whitelist them via System Preferences > Security & Privacy.
OneTab has to be Export (plaintext) and then Import.

## Things Should Be Fixeds

- `dotfiles` MUST be installed first.
- `rvm` installation requires a restart of the shell so that Ruby version can be installed.
- Docker Engine has to be restarted, and then logging in.
- Somehow, `zimfw install` cannot be executed. Had to do it manually so that `zim` is initialized.
  - the condition is fixed on ~/.zshrc
- `todo.txt` add on can be installed
`tmux`'s Powerline needs to be installed (using Python3.8 as the default).

`_cdw.sh` -- autocomplete for `cdw()` MAY not work properly. The file `~/.zcompdump` SHOULD be deleted so that zsh initialized it again.
SHOULD install 7z from brew.

## The playbook has to be run multiple times
## Neovim is not working
