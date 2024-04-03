#!/bin/sh -xe

mv /download-cache/compleat /usr/local/bin
mkdir -p $DEV_USER/.bash_completion.d
mv compleat_setup $DEV_USER/.bash_completion.d
