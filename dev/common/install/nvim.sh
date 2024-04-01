#!/bin/sh -xe

mv /download-cache/nvim.appimage /usr/local/bin/nvim
chmod +x /usr/local/bin/nvim

echo "export APPIMAGE_EXTRACT_AND_RUN=1" >> /home/$DEV_USER/.profile
