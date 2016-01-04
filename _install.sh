#!/bin/sh
#
# install.sh
#
# Sets up a very opinionated development system and included .dotfiles. This should only
# be run during an initial system setup after a fresh OSX install, and not on a system
# that has already been customized, or it may break some of the packages installed.
#
# Based on https://github.com/afeld/dotfiles/blob/master/init.sh

# Die on failures
set -e

###########################################################
# Configs
###########################################################
# git
ln -s $dir/etc/gitignore_global ~/.gitignore
echo "=== Linked $dir/etc/gitignore_global to ~/.gitignore"

ln -s $dir/etc/gitconfig_global ~/.gitconfig
echo "=== Linked $dir/etc/gitconfig_global to ~/.gitconfig"

ln -s $dir/etc/editorconfig ~/.editorconfig
echo "=== Linked $dir/etc/editorconfig to ~/.editorconfig"

ln -s $dir/etc/vimrc ~/.vimrc
echo "=== Linked $dir/etc/vimrc to ~/.vimrc"

ln -s $dir/etc/tmux.conf ~/.tmux.conf
echo "=== Linked $dir/etc/tmux.conf to ~/.tmux.conf"