#!/usr/bin/env bash

# install updates
yum update -y

# install openssh-server
yum install openssh-server -y

# do not allow root login remotely
repl='#PermitRootLogin yes'
with='PermitRootLogin no'
sed -i "s/$repl/$with/g" /etc/ssh/sshd_config

# start ssh
systemctl start sshd

# set timezone (America/Boise example)
# /etc/localtime should link to the proper timezone file
timedatectl set-timezone America/Boise
