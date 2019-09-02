#!/bin/bash

rofi_command="rofi -theme themes/powermenu.rasi"

### Options ###
power_off="Power Off"
reboot="Reboot"
lock="Lock"
# Variable passed to rofi
options="$power_off\n$reboot\n$lock"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"
case $chosen in
    $power_off)
        systemctl poweroff
        ;;
    $reboot)
        systemctl reboot
        ;;
    $lock)
        "/home/excalibur/.bin/scripts/lock.sh /home/excalibur/Downloads/Wallpapers/lock3.png"
        ;;
esac

