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

xbindkeys

cat /dev/null > ~/.local/share/recently-used.xbel &
compton --config ~/.config/compton.conf &
xrandr --output VGA-1 --left-of LVDS-1 --output HDMI-1 --fbmm 530x300 --left-of VGA-1 &
sh ~/.fehbg &
clipit &
pasystray &
nm-applet &
blueman-applet &
udiskie &
redshift -l 52.492479:-1.909269 -t 6500:3200 &

exec i3
