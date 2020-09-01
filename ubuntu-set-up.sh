#!/bin/bash

echo '*******************'
echo 'Adding Repositories'
echo '*******************'
sudo apt-add-repository ppa:git-core/ppa
sudo add-apt-repository ppa:slgobinath/safeeyes
sudo add-apt-repository universe
sudo add-apt-repository ppa:daniruiz/flat-remix
sudo add-apt-repository ppa:deluge-team/stable
sudo apt-get update

echo '*********************************'
echo 'Installing the latest git version'
echo '*********************************'
sudo apt-get install git

echo '*****************'
echo 'Installing SDKMAN'
echo '*****************'
sudo curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

echo '*****************'
echo 'Installing Docker'
echo '*****************'
sudo apt install docker.io
echo '***************'
echo 'Enabling Docker'
echo '***************'
sudo systemctl start docker
sudo systemctl enable docker

echo '*********************************'
echo 'Installing Intellij Idea Ultimate'
echo '*********************************'
sudo snap install intellij-idea-ultimate --classic

echo '*****************'
echo 'Installing Cheese'
echo '*****************'
sudo apt install cheese

echo '*****************'
echo 'Installing Httpie'
echo '*****************'
sudo apt install httpie

echo '******************'
echo 'Installing Postman'
echo '******************'
sudo snap install Postman

echo '*****************************'
echo 'Installing Visual Studio Code'
echo '*****************************'
sudo snap install code

echo '*****************'
echo 'Installing NodeJS'
echo '*****************'
curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
sudo apt-get install -y nodejs

echo '********************'
echo 'Installing Safe Eyes'
echo '********************'
sudo apt install safeeyes

echo '***********************'
echo 'Installing Gnome Tweaks'
echo '***********************'
sudo apt install gnome-tweak-tool

echo '****************************'
echo 'Installing Auto-Hide Top Bar'
echo '****************************'
sudo apt install gnome-shell-extension-autohidetopbar

echo '***************************'
echo 'Installing Flat-Remix Theme'
echo '***************************'
sudo apt-get install flat-remix-gtk

echo '***************'
echo 'Installing htop'
echo '***************'
sudo apt install htop

echo '*****************'
echo 'Installing Deluge'
echo '*****************'
sudo apt-get install deluge

echo '********************'
echo 'Installing flameshot'
echo '********************'
sudo apt install flameshot
echo '************************************'
echo 'Making Flameshot to work with PrtScr'
echo '************************************'
gsettings set org.gnome.settings-daemon.plugins.media-keys screenshot ''
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'flameshot'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command '/usr/bin/flameshot gui'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding 'Print'

echo '**************'
echo 'Installing ZSH'
echo '**************'
sudo apt install zsh
zsh --version
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo '******************************'
echo 'Installing Clipboard Indicator'
echo '******************************'

git clone https://github.com/Tudmotu/gnome-shell-extension-clipboard-indicator.git ~/.local/share/gnome-shell/extensions/clipboard-indicator@tudmotu.com
echo 'Do Alt+F2 and \'r\' to restart the shell'
