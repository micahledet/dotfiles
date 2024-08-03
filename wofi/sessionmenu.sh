#!/usr/bin/env bash

op=$( echo -e " Shutdown\n Reboot\n Suspend\n Lock\n Logout" | wofi -i --dmenu --columns=1 --width=250 --height=255 | awk '{print tolower($2)}' )

#op=$( echo -e "Poweroff\nReboot\nSuspend\nLock\nLogout" | wofi -i --dmenu --columns=1 --width=180 --height=255 | awk '{print tolower($2)}' )

case $op in 
    shutdown)
        exec systemctl poweroff -i;;
    reboot)
        exec systemctl reboot;;
    suspend)
        exec systemctl suspend;;
    lock)
		swaylock;;
    logout)
		wayland-logout;;
esac
