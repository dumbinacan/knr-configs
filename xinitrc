#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#wait 5 seconds for network to go online
duration=0;
start=$SECONDS;
while (($duration<=30))
do
    if ping -c 1 archlinux.org &> /dev/null
    then
        break;
    fi
    duration=$(( SECONDS - start ))
done

#turn off sleep mode
#systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
xset dpms force on

#update system at boot.. 
~/knr-configs/scripts/update_configs.sh && wait

#application to hide the mouse cursor when not being used
unclutter &


exec i3
