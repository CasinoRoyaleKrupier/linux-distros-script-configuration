#!/bin/sh

# INSTALL PACKAGES
pacman -Syyu
pamac install clang gcc gdm cmake make manjaro-printer virtualbox thunderbird rhythmbox snapd putty vlc dropbox chromium torbrowser kicad

systemctl enable --now snapd.socket

snap install code --classic
snap install netcalc --edge
snap install spotify rpi-imager