#! /bin/sh

# Runs the appropriate commands to set up this .vimrc.

git submodule update --init --recursive
sudo apt install vim-python-jedi
ln -s .vimrc ~/.vimrc
