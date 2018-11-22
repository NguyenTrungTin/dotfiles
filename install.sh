#!/usr/bin/env bash

# Cd on Home directory
cd ~

# Create backup directory
echo 'Starting backup dotfiles process...'
mkdir -p ~/.dotfiles-backup

# Backup current dotfiles
echo 'Moving current dotfiles into ~/.dotfiles-backup directory...'
mv .aliases .bashrc .ctags .curlrc .editorconfig .gitconfig .gitignore .hyper.js .inputrc .tmux.conf .tmux.conf.local .vimrc .wgetrc .zshrc ~/.dotfiles-backup 2>/dev/null

# Backup done!
echo 'Backup done!'

# Start installing new dotfiles
echo 'Starting install new dotfiles'

# Clone source code from GitHub
git clone https://github.com/NguyenTrungTin/dotfiles ~/.dotfiles

# Let's install new dotfiles
cp ~/.dotfiles/.* ~/

# Done!
echo 'Install dotfiles successfully. Done!'

