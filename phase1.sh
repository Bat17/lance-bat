#!/bin/bash

# Default packages are for the configuration and corresponding .config folders
# Install packages after installing base Debian with no GUI

# xorg display server installation
sudo apt install -y xorg xbindkeys xvkbd xinput

# PACKAGE INCLUDES build-essential.
sudo apt install -y build-essential

# Microcode for Intel/AMD 
# sudo apt install -y amd64-microcode
sudo apt install -y intel-microcode 

# Network File Tools/System Events
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends xfce4-power-manager

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid


sudo apt install -y tilix nemo htop lxappearance firefox-esr feh

# Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa pasystray

# Network Manager
sudo apt install -y network-manager network-manager-gnome 


# Fonts and icons for now
sudo apt install -y fonts-firacode fonts-liberation2 fonts-ubuntu papirus-icon-theme fonts-cascadia-code


# Printing and bluetooth (if needed)
sudo apt install -y cups system-config-printer simple-scan
sudo systemctl enable cups


# Packages needed for bspwm installation
sudo apt install -y bspwm sxhkd numlockx rofi dunst libnotify-bin unzip geany scrot xed

# Command line text editor -- nano preinstalled 
sudo apt install -y micro
# sudo apt install -y vim

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

mkdir -p ~/.config/{bspwm,sxhkd,dunst,rofi}

cp bspwmrc /home/peter/.config/bspwm/
chmod 777 /home/peter/.config/bspwm/bspwmrc

cp sxhkdrc /home/peter/.config/bspwm/
chmod 777 /home/peter/.config/bspwm/sxhkdrc

cp pbar_config /home/peter/.config/bspwm/
chmod 777 /home/peter/.config/bspwm/pbar_config

cp desktop-metadata /home/peter/.config/nemo/

cp CheatSheet.rasi /home/peter/.config/rofi/
cp config /home/peter/.config/rofi/
cp config.rasi /home/peter/.config/rofi/
cp DarkBlue.rasi /home/peter/.config/rofi/

cp accels /home/peter/.config/xed/


cp bspwm_resize /home/peter/.local/bin/
chmod 777 /home/peter/.local/bin/bspwm_resize
cp rofi-menu.sh /home/peter/.local/bin/
chmod 777 /home/peter/.local/bin/rofi-menu.sh
cp rofi-menu-edit.sh /home/peter/.local/bin/
chmod 777 /home/peter/.local/bin/rofi-menu-edit.sh
cp rofi-shxkd-cheatsheet.sh /home/peter/.local/bin/
chmod 777 /home/peter/.local/bin/rofi-shxkd-cheatsheet.sh

cp .bashrc /home/peter/
chmod 777 /home/peter/.bashrc
cp .bash_aliases /home/peter/
chmod 777 /home/peter/.bash_aliases 



# Install Lightdm Console Display Manager
sudo apt install -y lightdm lightdm-gtk-greeter-settings
sudo systemctl enable lightdm


########################################################
# End of script for default config
#

## These two scripts will install nerdfonts and copy my configuration files into the ~/.config directory
## Configuration uses 

mkdir -p ~/.local/share/fonts

cd /tmp
fonts=( 
"CascadiaCode"
"FiraCode" 
"Go-Mono" 
"Hack"  
"Iosevka" 
"JetBrainsMono" 
"Mononoki" 
"RobotoMono" 
"SourceCodePro" 
"UbuntuMono"
)

for font in ${fonts[@]}
do
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/$font.zip
	unzip $font.zip -d $HOME/.local/share/fonts/$font/
    rm $font.zip
done
fc-cache


sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"
