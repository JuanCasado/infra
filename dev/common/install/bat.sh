#!/bin/sh -xe

apt-get install -y bat > /dev/null
ln -s /usr/bin/batcat /usr/local/bin/bat
