#!/bin/sh

cd ~/knr-configs
git pull

sudo pacman -Syyu --noconfirm > ./update.log & wait;
