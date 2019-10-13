#!/bin/bash
#ICON=/home/john/.config/i3lock/lock.png
TMPBG=/tmp/screen.png
scrot /tmp/screen.png
convert $TMPBG -scale 2% -scale 5150% $TMPBG
#convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
media-control stop
i3lock -i $TMPBG
xset dpms force standby
