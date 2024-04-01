#!/bin/sh -xe

useradd -ms $DEV_SHELL $DEV_USER
mkdir -p /home/$DEV_USER/.ssh/
touch /home/$DEV_USER/.hushlogin
