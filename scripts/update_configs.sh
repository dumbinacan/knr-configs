#!/bin/sh

cd ~/knr-configs
echo "## $(date) ##\ngit pull" >> ./update.log
git pull >> ./update.log
echo "# pacman -Syyu --noconfirm" >> ./update.log
sudo pacman -Syyu --noconfirm >> ./update.log && wait;
echo "##################################\n" >> ./update.log
git add ./update.log
git commit -m "updates from $(date)"
git push
