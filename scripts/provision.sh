#!/bin/bash

sudo pwd
sudo ls
sudo cp -v /vagrant/files/hosts /etc/hosts

#private key distribution
sudo useradd -m ansible
sudo mkdir -p /home/ansible/.ssh
sudo mkdir /root/.ssh

sudo chown ansible:ansible /home/ansible/.ssh
sudo chmod 600 /home/ansible/.ssh
sudo chmod 600 /root/.ssh

sudo cat /vagrant/files/id_rsa.pub >> /root/.ssh/authorized_keys
sudo cat /vagrant/files/id_rsa.pub >> /home/ansible/.ssh/authorized_keys
sudo cp /vagrant/files/id_rsa /home/ansible/.ssh/
sudo cp /vagrant/files/id_rsa /root/.ssh/

sudo chmod 600 /home/ansible/.ssh/*
sudo chmod 600 /root/.ssh/*
