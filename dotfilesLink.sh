#!/bin/sh
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.zlogin ~/.zlogin
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/Brewfile ~/Brewfile
ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global
ln -sf ~/dotfiles/.gitconfig.gaopin ~/.gitconfig.gaopin
git config --global core.excludesfile ~/.gitignore_global
