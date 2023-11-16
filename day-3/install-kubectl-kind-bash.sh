#!/bin/bash

# Update system
sudo apt update
sudo apt upgrade -y

if ! [ -x "$(command -v docker)" ]; then
    echo "Installing Docker..."
    sudo apt install docker.io -y
    sudo usermod -aG docker $USER
    newgrp docker
fi

echo "Installing kind..."
curl -Lo ./kind https://github.com/kubernetes-sigs/kind/releases/download/v0.11.1/kind-$(uname)-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind

echo "Installing kubectl..."
sudo apt install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt update
sudo apt-get install -y kubectl

echo "Versions installed:"
kind --version
kubectl version --client

