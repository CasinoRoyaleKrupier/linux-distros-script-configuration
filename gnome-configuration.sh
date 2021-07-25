#!/bin/sh

# SET ICONS
echo '---> Extracting icons package...'
unzip -q icons.zip -d ~/.icons
echo '---> Setting "Flat-Remix-Red-Dark" icons...'
gsettings set org.gnome.desktop.interface icon-theme "Flat-Remix-Red-Dark"

# SET INTERFACE THEME
echo '---> Setting "Matcha-dark-aliz" interface theme...'
gsettings set org.gnome.desktop.interface gtk-theme "Matcha-dark-aliz"
echo '---> Setting "Matcha-dark-aliz" user theme...'
gsettings set org.gnome.shell.extensions.user-theme name "Matcha-dark-aliz"

# SET WALLPAPER
echo '---> Extracting wallpapers package...'
unzip -q wallpapers.zip -d ~/Pictures
echo '---> Setting wallpaper...'
gsettings set org.gnome.desktop.background picture-uri ~/Pictures/Wallpapers/material-design-01.png

# SET DOCK
echo '---> Setting dock...'
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'FIXED'
gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed true
gsettings set org.gnome.shell.extensions.dash-to-dock force-straight-corner false
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash true
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 16
gsettings set org.gnome.shell.extensions.dash-to-dock running-indicator-style 'DASHES'
gsettings set org.gnome.shell favorite-apps "['chromium.desktop', 'torbrowser.desktop', 'thunderbird.desktop', 'code_code.desktop', 'kicad.desktop', 'arduino-arduinoide.desktop', 'org.gnome.Terminal.desktop', 'org.gnome.Nautilus.desktop', 'libreoffice-startcenter.desktop', 'spotify_spotify.desktop', 'org.gnome.Calculator.desktop', 'org.gnome.Screenshot.desktop', 'putty.desktop', 'virtualbox.desktop', 'org.manjaro.pamac.manager.desktop', 'org.gnome.tweaks.desktop', 'gnome-control-center.desktop']"

# SET TOP BAR
echo '---> Setting topbar clock and date...'
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface clock-show-weekday true
echo '---> Setting topbar battery procentage...'
gsettings set org.gnome.desktop.interface show-battery-percentage true

# SET WINDOWS TITLEBAR
echo '---> Setting topbar click...'
gsettings set org.gnome.desktop.wm.preferences action-double-click-titlebar toggle-maximize
gsettings set org.gnome.desktop.wm.preferences action-middle-click-titlebar minimize
gsettings set org.gnome.desktop.wm.preferences action-right-click-titlebar menu

# SET WORKSPACES
echo '---> Setting workspaces...'
gsettings set org.gnome.desktop.wm.preferences num-workspaces 4
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.mutter workspaces-only-on-primary false

# SET SSH
echo '---> Copying ssh configuration...'
mkdir -p ~/.ssh
unzip -q ssh-config.zip -d ~/.ssh

# SET GIT
echo '---> Setting git...'
git config --global user.email "radek3301@linux.pl"
git config --global user.name "CasinoRoyaleKrupier"

# SET TEMPLATES
mkdir -p ~/Templates
rm ~/Templates/*
unzip -q templates.zip -d ~/Templates

# INSTALL ZSH
echo '---> Downloading "oh-my-zsh" package...'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="bira"/g' ~/.zshrc