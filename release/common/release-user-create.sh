#!/bin/sh -xe

useradd -ms $RELEASE_SHELL $RELEASE_USER
mkdir -p /home/$RELEASE_USER/.ssh/
touch /home/$RELEASE_USER/.hushlogin
chown -R $RELEASE_USER:$RELEASE_USER /home/$RELEASE_USER
