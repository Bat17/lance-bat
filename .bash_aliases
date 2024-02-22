#!/bin/bash

alias ..='cd ..'

alias aptu='sudo apt update && sudo apt upgrade -yy'
alias apti='sudo apt install'
alias apta='sudo apt autoremove'
alias aptc='sudo apt clean && sudo apt  autoremove'

# avoid accidently overwriting files by making cp/mv interactive
alias mv='mv -i'
alias cp='cp -i'

# load this file
alias nhelp='nano /home/peter/.bash_aliases'

# reload this file
alias rl='source ~/.bashrc'

# add line numbers to nano
alias nano='nano -l'
# use Feather Pad
alias fp='featherpad'

# run neofetch  when opening terminal
neofetch

# VPN
alias vpnc='purevpn -c gb'
alias vpnd='purevpn -d'
alias vpnip='dig +short myip.opendns.com @resolver1.opendns.com'

# resource monitor
alias top='bpytop'

# Cheat sheets
alias cheat='curl https://cheat.sh/'

#mmom
alias mm='/opt/PlaneShift/pslaunch.bin &'


# list all short cuts

scuts() {

echo 'aptu  - sudo apt update && sudo apt upgrade -yy'
echo 'apti  - sudo apt install'
echo 'apta  - sudo apt autoremove'
echo 'aptc  - sudo apt clean && sudo apt  autoremove'
echo 'nhelp - edit alias file .bash_aliases'
echo 'fp xxx - opens file xxx in the featherpad editor'
echo 'rl    - reloads bash'
echo 'Ctr+x+e  - open nano for long and/or multi line commands'
echo 'runs them when  you save then exit'
echo 'fc  -  opens previous command in nano to edit'
echo 'bpytop - htop replacement'
echo 'vpnc - connect UK'
echo 'vpnd - discconect'
echo 'vpnip - check external ip'
echo 'cpufetch - like neofetch but for more cpu details'
echo 'gdu	- like Qdir but in terminal'

}
# check out sxhkd

