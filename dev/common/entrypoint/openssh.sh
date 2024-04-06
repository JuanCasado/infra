#!/bin/sh -xe

echo "SSH_PATH=$PATH" >/home/$DEV_USER/.ssh/environment
service ssh restart
