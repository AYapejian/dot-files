#!/bin/sh
#
# install.sh
#
# Sets up a very opinionated development system and included .dotfiles. This should only
# be run during an initial system setup after a fresh OSX install, and not on a system
# that has already been customized, or it may break some of the packages installed.
#
# Based on https://github.com/afeld/dotfiles/blob/master/init.sh

CURRENT_DIR=${PWD##*/}
# Die on failures
set -e

###########################################################
# Configs
###########################################################
# git
ln -sf $CURRENT_DIR/etc/gitignore_global ~/.gitignore
echo "=== Linked $CURRENT_DIR/etc/gitignore_global to ~/.gitignore"

ln -sf $CURRENT_DIR/etc/gitconfig_global ~/.gitconfig
echo "=== Linked $CURRENT_DIR/etc/gitconfig_global to ~/.gitconfig"

ln -sf $CURRENT_DIR/etc/editorconfig ~/.editorconfig
echo "=== Linked $CURRENT_DIR/etc/editorconfig to ~/.editorconfig"

ln -sf $CURRENT_DIR/etc/vimrc ~/.vimrc
echo "=== Linked $CURRENT_DIR/etc/vimrc to ~/.vimrc"

ln -sf $CURRENT_DIR/etc/tmux.conf ~/.tmux.conf
echo "=== Linked $CURRENT_DIR/etc/tmux.conf to ~/.tmux.conf"

ln -sf $CURRENT_DIR/etc/screenrc ~/.screenrc
echo "=== Linked $CURRENT_DIR/etc/screenrc to ~/.screenrc"
