#!/bin/bash
amixer set Master mute
amixer -q -D pulse sset Master mute
pactl set-sink-mute 0 1
pactl set-sink-mute 1 1
wmctrl -k on
sleep 0.2s
loginctl lock-session
xdg-screensaver lock
sleep 0.3s
dm-tool lock
exit
