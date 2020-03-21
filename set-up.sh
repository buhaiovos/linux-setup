#!/bin/bash

echo 'Installing the latest git version'
sudo apt-add-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git

echo 'Installing SDKMAN'
sudo curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

echo 'Installing Docker'
sudo apt install docker.io
echo 'Enabling Docker'
sudo systemctl start docker
sudo systemctl enable docker

echo 'Installing Intellij Idea Ultimate'
sudo snap install intellij-idea-ultimate --classic

echo 'Installing ZSH'
sudo apt install zsh
zsh --version
chsh -s $(which zsh)
gnome-terminal --tab --command="sh -c '$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)'"
