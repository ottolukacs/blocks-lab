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
git clone --branch v4.12.0 https://github.com/wazuh/wazuh-ansible.git /home/ubuntu/blocks-lab/wazuh-ansible

# Copy roles to ansible
cp -r /home/ubuntu/blocks-lab/cyberlab-deployer/roles/blocks-server /etc/ansible/roles/blocks-server
ln -s /home/ubuntu/blocks-lab/wazuh-ansible/roles/wazuh/ansible-wazuh-agent /etc/ansible/roles/ansible-wazuh-agent

