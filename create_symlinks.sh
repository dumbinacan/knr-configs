#!/bin/bash

#This script will make symlinks for all the config files in this folder.
#TODO learn make and make makefile

#working directory
wd=$HOME/knr-configs

#bashrc
ln -sf $wd/bashrc $HOME/.bashrc

#i3config
ln -sf $wd/i3config $HOME/.config/i3/config

#vimrc
ln -sf $wd/vimrc $HOME/.vimrc

#xinitrc
ln -sf $wd/xinitrc $HOME/.xinitrc

#Xresources
ln -sf $wd/Xresources $HOME/.Xresources
