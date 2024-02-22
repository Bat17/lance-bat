#!/bin/bash

# add name to list as well as functions!


PROGRAM=$(echo "Money Manager
Password Safe
plan Maker
text Maker
VirtualBox
Presentations
HexChat
TimeShift
Transmission
System Monitor
Print Manager
Lightdm Settings
Screensaver Settings
Nvidia

" | rofi -dmenu -hover-select -me-select-entry '' -me-accept-entry MousePrimary -theme sidebar -p "select program: ")
# V3
# echo "you selected $PROGRAM"
[[ -z $PROGRAM ]] && exit


case $PROGRAM in

  "Money Manager")
    mmex
    ;;

  "Password Safe")
    pwsafe
    ;;

  "System Monitor")
    system-monitoring-center
    ;;
    
  "Print Manager")
    system-config-printer
    ;;
    
  "Lightdm Settings")
    lightdm-gtk-greeter-settings-pkexec
    ;;
        
  "Screensaver Settings")
    xscreensaver-settings
    ;;

  "Nvidia")
    pkexec nvidia-settings
    ;;
  "HexChat")
    hexchat
    ;;
  "plan Maker") 
# create a temp work space before moving to 7 to make sure opens on right sheet
# cancels effect of back_and_forth!! going to 7 first to stop temp showing if launched from mon2
#    i3-msg "workspace 7:Sheets"
#    i3-msg workspace temp_Pl
#    i3-msg "workspace 7:Sheets"
    planmaker21 &
#    i3-msg "layout tabbed"
    ;;
    
  "text Maker")
    i3-msg workspace temp_t
    i3-msg workspace 7:Sheets
    textmaker21 &
    i3-msg "layout tabbed"
    ;;
    
    
  "Presentations")
    i3-msg workspace temp_Pr
    i3-msg workspace 7:Sheets
    presentations21 &
    i3-msg layout tabbed
 #   i3-msg workspace_auto_back_and_forth yes
    
    ;;

  "TimeShift")
    pkexec timeshift-gtk
    ;;
    
    
  "Transmission")
    transmission-gtk
    ;;

  "VirtualBox")
    virtualbox
    ;;
      

  *)
    echo -n "unknown"
    
    ;;
esac
