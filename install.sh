#!/usr/bin/env bash

cp .ls_color ~/

sudo apt update
sudo apt install -y \
	curl \
	zsh \
	fzf \
	git \
	golang \
	tree \
       	vim \
	ca-certificates \
	gnupg \
	unzip zip
sudo snap install --classic gcloud
sudo snap install --classic terraform
##################################################################
#                      DOCKER INSTALL                            #
##################################################################
sudo apt install -y ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update

sudo apt -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo groupadd docker

sudo usermod -aG docker $USER

###################################################################
curl -s "https://get.sdkman.io" | bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp .zshrc ~/
cp cheztone.zsh-theme ~/.oh-my-zsh/custom/themes/
