#!/bin/sh -xe

add-apt-repository ppa:aacebedo/fasd > /dev/null
apt-get update > /dev/null
apt-get install -dy fasd > /dev/null
