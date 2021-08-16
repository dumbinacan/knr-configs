#!/bin/sh

ffplay -fflags nobuffer -flags low_delay http://displaywall:display@192.168.1.40/mjpg/video.mjpg 
#ffplay -fflags nobuffer -flags low_delay -rtsp_transport tcp -i "rtsp://displaywall:display@192.168.1.40/axis-media/media.amp?streamprofile=display_wall"
#ffplay -fflags nobuffer -flags low_delay -rtsp_transport tcp -i "rtsp://displaywall:display@192.168.1.40/axis-media/media.amp?streamprofile=display_wall"

#vlc -f rtsp://displaywall:display@192.168.1.40/axis-media/media.amp --rtsp-http
