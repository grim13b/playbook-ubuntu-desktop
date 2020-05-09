#!/bin/bash

sudo apt update
sudo apt install -y build-essential git curl

# TODO: Revived when PPA supports Focal
# Install ansible PPA
#if ! grep -q "ansible/ansible" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
#	echo "Adding Ansible PPA"
#	sudo apt-add-repository ppa:ansible/ansible -y
#fi

if ! hash ansible >/dev/null 2>&1; then
	echo "Installing Ansible"
	sudo apt update
	sudo apt install software-properties-common ansible -y
else
	echo "Ansible already installed"
fi

# Display real installation process
echo ""
echo "Usage: "
echo "  $ ansible-playbook setup.yml --ask-become-pass"
