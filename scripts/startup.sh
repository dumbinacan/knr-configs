#!/bin/sh

cd ~/knr-configs/scripts
./update_configs.sh && wait

source ./calendar.sh &
source ./weather.sh &
source ./labcam.sh

