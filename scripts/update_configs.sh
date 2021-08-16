#!/bin/sh

cd ~/knr-configs
git pull

echo "## $(date) ##" >> ./update.log
sudo pacman -Syyu --noconfirm >> ./update.log
