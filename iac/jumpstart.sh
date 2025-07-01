#!/bin/bash

# Set hostname
hostnamectl set-hostname blocks-srv

# Update repositories and install dependencies
apt update
apt install software-properties-common -y

# Add Ansible PPA and install Ansible
add-apt-repository --yes --update ppa:ansible/ansible
apt install ansible -y

# Install Ansible collections
ansible-galaxy collection install community.docker

#Other
mkdir /home/ubuntu/ansible
cd /home/ubuntu/ansible
wget https://raw.githubusercontent.com/ottolukacs/blocks-lab/refs/heads/main/deploy.yml