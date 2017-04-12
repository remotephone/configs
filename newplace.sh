#!/bin/bash

## This will get a new VM or whatever set up like I like it. 
## Works on Ubuntu for sure, probably some other stuff too, I dunno.

## Get some colors
echo "Making color dir..."

mkdir -p ~/.vim/colors

echo "Getting colors..."
curl -s https://raw.githubusercontent.com/raphamorim/lucario/master/colors/lucario.vim -o ~/.vim/colors/lucario.vim

## Install Vundle

echo "Creating the bundle dir and getting Vundle..."
mkdir -p ~/.vim/bundle/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

## Get my .vimrc

echo "Getting the vimrc..."
curl -s https://raw.githubusercontent.com/remotephone/configs/master/.vimrc -o ~/.vimrc

##Install plugins
echo "Installing plugins...."
vim +PluginInstall +qall

echo "And we're done!"
