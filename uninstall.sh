#!/usr/bin/env bash

# Cd Home Directory
cd ~

# Dotfiles
DOTFILES='.aliases .bashrc .ctags .curlrc .editorconfig .gitconfig .gitignore .hyper.js .inputrc .tmux.conf .tmux.conf.local .vimrc .wgetrc .zshrc'
DOTDIR='.vim/ .config/nvim/ .tmux/ .hyper_plugins/ .oh-my-zsh/'

# Uninstall dotfiles
echo 'Uninstalling dotfiles...'
rm -rf $DOTFILES $DOTDIR 2>/dev/null
rm -rf ~/.dotfiles

# Revert old dotfiles
echo 'Reverting old dotfiles...'
cd ~/.dotfiles-backup
mv $DOTFILES $DOTDIR ~/ 2>/dev/null
cd ~
rm -rf ~/.dotfiles-backup

# Done!
echo 'Done!'

