#!/bin/bash

# Backup and replace source list
sudo cp /etc/apt/sources.list.d/ubuntu.sources /etc/apt/sources.list.d/ubuntu.sources.bak
sudo sed -i 's/ap-southeast-1.ec2.//g' /etc/apt/sources.list.d/ubuntu.sources

# Update system
sudo apt update && sudo apt upgrade -y

# Install docker
sudo apt-get install docker.io -y

# Add User
sudo usermod -aG docker ubuntu
newgrp docker

