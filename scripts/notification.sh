#!/bin/bash

SRL="$(echo -e "DP-1\nDP-2" | fzf --prompt="Please Make a Selection : " --border=rounded --margin=5% --color=dark --height 100% --reverse --header="      NOTIFICATION MENU " --info=hidden --header-first)"
case $SRL in
DP-1)
	sed -i 's/monitor = 1/monitor = 0/g' ~/.config/dunst/dunstrc
	killall -9 dunst
	dunst &
	;;
DP-2)
	sed -i 's/monitor = 0/monitor = 1/g' ~/.config/dunst/dunstrc
	killall -9 dunst
	dunst &
	;;
*)
	exit 78
	;;
esac
