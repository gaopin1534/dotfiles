#!/bin/sh
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.zlogin ~/.zlogin
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/Brewfile ~/Brewfile
ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global
ln -sf ~/dotfiles/.gitconfig.gaopin ~/.gitconfig.gaopin
ln -sf ~/dotfiles/.hyper.js ~/.hyper.js
ln -sf ~/dotfiles/.hyper_plugins ~/.hyper_plugins
git config --global core.excludesfile ~/.gitignore_global
