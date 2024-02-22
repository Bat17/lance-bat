#!/bin/bash

# add name to list as well as functions!


PROGRAM=$(echo "Configs
Bspwmrc
Sxhkdrc
Polybar
Rofi Programes
Rofi Browsers
Rofi Edits
Rofi Run Scripts
Bashrc
Bash_aliases
CopyBeforeUpdate
" | rofi -dmenu -hover-select -me-select-entry '' -me-accept-entry MousePrimary -theme sidebar -p "select program: ")
# echo "you selected $PROGRAM"
[[ -z $PROGRAM ]] && exit


case $PROGRAM in

  "Configs")
    openconfigs.sh
    ;;


  "Bspwmrc")
    xed /home/peter/.config/bspwm/bspwmrc
    ;;

  "Sxhkdrc")
    xed /home/peter/.config/bspwm/sxhkdrc
    ;;

  "Polybar")
    xed /home/peter/.config/bspwm/pbar_config
    ;;

  "Rofi Programes")
    xed /home/peter/.local/bin/rofi-menu.sh
    ;;
    
  "Rofi Browsers")
    xed /home/peter/.local/bin/rofi-menu-browser.sh
    ;;
    
  "Rofi Edits")
    xed /home/peter/.local/bin/rofi-menu-edit.sh
    ;;
    
  "Bashrc")
    xed /home/peter/.bashrc
    ;;

  "Bash_aliases")
   xed /home/peter/.bash_aliases
    ;;   

  "CopyBeforeUpdate")
   xed /home/peter/MEGAsync/lmde5/i3/Fedora/setup/copyBeforeUpdate.sh
    ;;   

  "Rofi Run Scripts")
   xed /home/peter/.local/bin/rofi-menu-run.sh
    ;;    
   
   
  *)
    echo -n "unknown"    
    ;;
    
esac
