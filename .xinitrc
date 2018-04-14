#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/?* ; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xrandr --output DP-2 --mode 3440x1440 --primary --rate 100
xrandr --output HDMI-0 --off

[ -f ~/.Xresources ] && xrdb ~/.Xresources

xsetroot -cursor_name left_ptr &
setxkbmap de,de
urxvtd -q -f -o # starting terminals with a background daemon speeds them up; this does NOT spawn a terminal itself

compton --config ~/.config/.compton.conf &> /dev/null &
sxhkd &> /dev/null &
[ ! -s ~/.config/mpd/pid ] && mpd ~/.config/mpd/mpd.conf
exec bspwm &> /dev/null
