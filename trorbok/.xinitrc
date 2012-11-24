#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# ...or the Window Manager of your choice

if [ -f ${HOME}/.Xresources ];then
    xrdb -load /home/mharlow/.Xresources
fi

if [ -f ${HOME}/Pictures/wallpaper/dragongold1.jpg ];then
    xloadimage -border black -fit -fullscreen -onroot -quiet Pictures/wallpaper/dragongold1.jpg
fi

# exec gnome-session
# exec startkde
# exec startxfce4
# exec ratpoison
trayer --edge top --align right --SetDockType true --SetPartialStrut true \
     --expand true --width 10 --transparent true --tint 0x191970 --height 12 &
batti &
# volumeicon & # doesn't work with pulse?
xmodmap ~/.xmodmap &  # remap alt_r to mod4 for vnc
dropbox start & # start dropbox
x11vnc -usepw & # start x11vnc
xmonad
