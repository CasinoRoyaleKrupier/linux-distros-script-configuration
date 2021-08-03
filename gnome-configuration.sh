#!/bin/sh

# ICONS
echo '---> Extracting icons package...'
unzip -q icons.zip -d ~/.icons
echo '---> Configuring "Flat-Remix-Red-Dark" icons...'
gsettings set org.gnome.desktop.interface icon-theme "Flat-Remix-Red-Dark"

# INTERFACE THEME
echo '---> Configuring "Matcha-dark-aliz" interface theme...'
gsettings set org.gnome.desktop.interface gtk-theme "Matcha-dark-aliz"
echo '---> Configuring "Matcha-dark-aliz" user theme...'
gsettings set org.gnome.shell.extensions.user-theme name "Matcha-dark-aliz"

# WALLPAPER
echo '---> Extracting wallpapers package...'
unzip -q wallpapers.zip -d ~/Pictures
echo '---> Configuring wallpaper...'
gsettings set org.gnome.desktop.background picture-uri ~/Pictures/Wallpapers/material-design-01.png
gsettings set org.gnome.desktop.background picture-options 'zoom'

# DOCK
echo '---> Configuring dock...'
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'FIXED'
gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed true
gsettings set org.gnome.shell.extensions.dash-to-dock force-straight-corner false
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash true
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 16
gsettings set org.gnome.shell.extensions.dash-to-dock running-indicator-style 'DASHES'
gsettings set org.gnome.shell favorite-apps "['chromium.desktop', 'torbrowser.desktop', 'thunderbird.desktop', 'code_code.desktop', 'kicad.desktop', 'arduino-arduinoide.desktop', 'org.gnome.Terminal.desktop', 'org.gnome.Nautilus.desktop', 'libreoffice-startcenter.desktop', 'spotify_spotify.desktop', 'org.gnome.Calculator.desktop', 'org.gnome.Screenshot.desktop', 'putty.desktop', 'virtualbox.desktop', 'org.manjaro.pamac.manager.desktop', 'org.gnome.tweaks.desktop', 'gnome-control-center.desktop']"

# TOP BAR
echo '---> Configuring topbar...'
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface clock-show-weekday true
gsettings set org.gnome.desktop.interface show-battery-percentage true

# WINDOWS TITLEBAR
echo '---> Configuring window titlebar...'
gsettings set org.gnome.desktop.wm.preferences action-double-click-titlebar toggle-maximize
gsettings set org.gnome.desktop.wm.preferences action-middle-click-titlebar minimize
gsettings set org.gnome.desktop.wm.preferences action-right-click-titlebar menu

# WORKSPACES
echo '---> Configuring workspaces...'
gsettings set org.gnome.desktop.wm.preferences num-workspaces 4
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.mutter workspaces-only-on-primary false

# SSH
echo '---> Copying ssh configuration...'
mkdir -p ~/.ssh
unzip -q ssh-config.zip -d ~/.ssh

# GIT
echo '---> Configuring git...'
git config --global user.email "radek3301@linux.pl"
git config --global user.name "CasinoRoyaleKrupier"

# TEMPLATES
echo '---> Configuring templates...'
mkdir -p ~/Templates
rm ~/Templates/*
unzip -q templates.zip -d ~/Templates

# HOSTS FILE
echo \ >> /etc/hosts
echo '172.31.227.1	881-k9-01.local' >> /etc/hosts
echo '172.31.227.1	881-k9-01' >> /etc/hosts
echo '172.31.227.2	ws-c2960-24-s-01.local' >> /etc/hosts
echo '172.31.227.2	ws-c2960-24-s-01' >> /etc/hosts
echo '172.31.227.4	home-nas.local' >> /etc/hosts
echo '172.31.227.4	home-nas' >> /etc/hosts
echo '172.31.227.10	wap4410n-01.local' >> /etc/hosts
echo '172.31.227.10	wap4410n-01' >> /etc/hosts
echo '192.168.8.1	homerouter.cpe' >> /etc/hosts

# INSTALL ZSH
echo '---> Downloading "oh-my-zsh" package...'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="bira"/g' ~/.zshrc