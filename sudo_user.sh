#!/usr/bin/env bash

# update
yum update -y

# install sudo
yum install sudo -y

# add user
echo "Enter new username:"
read user
adduser $user

# set password for user
passwd $user

# add user to wheel group for sudo rights
usermod -aG wheel $user