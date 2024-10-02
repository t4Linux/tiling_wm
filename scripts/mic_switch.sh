#!/bin/bash

PICK=$(echo -e "1 CORSAIR_HS70_Pro\n2 Thronmax_StreamGo_Webcam" | fzf --prompt="Please Make a Selection : " --border=rounded --margin=5% --color=dark --height 100% --reverse --header="MICROPHONE MENU " --info=hidden --header-first)
icon_name="/usr/share/icons/Faba/48x48/notifications/notification-audio-volume-high.svg"

case "$PICK" in
"1 CORSAIR_HS70_Pro")
  MIC=$(pactl list sources short | grep -i CORSAIR | grep mono | awk '{print $2}')
  pactl set-default-source $MIC && notify-send -i $icon_name -t 2000 'Default MICROPHONE' 'CROSAIR_HS70'
  ;;
"2 Thronmax_StreamGo_Webcam")
  MIC=$(pactl list sources short | grep -i Thronmax | awk '{print $2}')
  pactl set-default-source $MIC && notify-send -i $icon_name -t 2000 'Default MICROPHONE' 'THRONMAX'
  ;;
*)
  exit 78
  ;;
esac
