#!/bin/sh -xe

mkdir -p /home/$DEV_USER/.config
git clone https://github.com/JuanCasado/config.git /home/$DEV_USER/.config
git -C /home/$DEV_USER/.config remote set-url origin git@github.com:JuanCasado/config.git
