#!/bin/bash

# Set hostname
hostnamectl set-hostname blocks-srv

# Update repositories and install dependencies
apt update
apt install software-properties-common -y

# Add Ansible PPA and install Ansible
add-apt-repository --yes --update ppa:ansible/ansible
apt install ansible -y

# Clone necessary Git Repos
git clone https://github.com/ottolukacs/blocks-lab.git /home/ubuntu/blocks-lab

# Copy roles to ansible
# cp -r /home/ubuntu/blocks-lab/cyberlab-deployer/roles/blocks-server /etc/ansible/roles/blocks-server

