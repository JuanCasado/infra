#!/bin/sh -xe

su $DEV_USER sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" > /dev/null

ln -fs /home/$DEV_USER/.config/zsh /home/$DEV_USER/.zshrc
