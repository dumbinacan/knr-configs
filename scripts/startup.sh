#!/bin/sh

cd ~/knr-configs/scripts
./update_configs.sh &&
source ./calendar.sh &
source ./weather.sh &
source ./labcam.sh &

