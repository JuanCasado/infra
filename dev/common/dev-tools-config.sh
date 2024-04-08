#!/bin/sh -xe

localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8

/setup/configure/openssh.sh
/setup/configure/nvim.sh
/setup/configure/zsh.sh
/setup/configure/bash.sh
/setup/configure/home.sh
/setup/configure/git.sh
