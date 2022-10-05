#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

(sleep 2; run $HOME/.config/polybar/launch.sh) &

#cursor active at boot
xsetroot -cursor_name left_ptr &

#starting utility applications at boot time
run nm-applet &
run cbatticon & 
run xfce4-power-manager &
run volctl &
run unclutter &
run keepassxc &
run feh --bg-fill $HOME/Pictures/wallpapers/haskell.png &
numlockx on &
blueberry-tray &
picom --config $HOME/.xmonad/scripts/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
