#!/bin/sh

cd ~/knr-configs
echo "## $(date) ##" >> ./update.log
git pull >> ./update.log
sudo pacman -Syyu --noconfirm >> ./update.log && wait;
git add ./update.log
git commit -m "updates from $(date)"
git push
