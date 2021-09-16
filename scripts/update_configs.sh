#!/bin/sh

cd ~/knr-configs
printf "## $(date) ##\n\$ git pull\n" >> ./update.log
git pull >> ./update.log
printf "# pacman -Syyu --noconfirm\n" >> ./update.log
sudo pacman -Syyu --noconfirm >> ./update.log && wait;
printf "#####################################\n" >> ./update.log
git add ./update.log
git commit -m "updates from $(date)"
git push
