#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

(sleep 2; run $HOME/.config/polybar/launch.sh) &

#change your keyboard if you need it
#setxkbmap -layout be

#starting utility applications at boot time
run nm-applet &
run cbatticon & 
run xfce4-power-manager &
run volumeicon &
run unclutter &
run keepassxc &
run feh --bg-fill /home/akai/Pictures/wallpapers/berserk.png &
numlockx on &
blueberry-tray &
picom --config $HOME/.xmonad/scripts/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
