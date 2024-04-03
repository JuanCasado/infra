#!/bin/sh -xe

echo "SSH_PATH=$PATH" >/home/$DEV_USER/.ssh/environment
service ssh restart
echo 'eval "$(ssh-agent -s)" && [ -f ~/.ssh/github ] && ssh-add ~/.ssh/github' >>/home/$DEV_USER/.profile
