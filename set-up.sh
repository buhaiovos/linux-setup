#!/bin/bash

echo '*********************************'
echo 'Installing the latest git version'
echo '*********************************'
sudo apt-add-repository ppa:git-core/ppa
sudo apt-get update
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
echo 'Enabling Docker'
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
echo 'Installing Gpaste'
echo '*****************'
sudo apt install gpaste

echo '**************'
echo 'Installing ZSH'
echo '**************'
sudo apt install zsh
zsh --version
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
