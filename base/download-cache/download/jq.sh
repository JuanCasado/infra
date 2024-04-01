#!/bin/sh -xe

apt-get install -dy jq > /dev/null

# yq aka jq for yml/yaml files
wget -P /download-cache -q https://github.com/mikefarah/yq/releases/latest/download/yq_linux_386.tar.gz > /dev/null
