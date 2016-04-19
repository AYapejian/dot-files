#!/bin/sh
#
# Install simply symlinks the configuration files from `<CLONE ROOT>/etc` 
# to `$HOME/<.filename>`. 
# #######################################################################
# NOTE: MANUALLY RUN IF YOU HAVE SOME IN PLACE ALREADY
# #######################################################################

# Die on failures
set -e 

CURRENT_DIR=${PWD##*/}

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
