#!/bin/sh

cd ~/knr-configs
echo "## $(date) ##" >> ./update.log
git pull >> ./update.log
sudo pacman -Syyu --noconfirm >> ./update.log
