#!/bin/sh -xe

apt-get install -y jq > /dev/null


# yq aka jq for yml/yaml files
mkdir /install

tar -xf /download-cache/yq_linux_386.tar.gz -C /install 2>&1 > /dev/null
mv /install/yq_linux_386 /usr/local/bin/yq

cd /install > /dev/null
/install/install-man-page.sh
cd - > /dev/null

rm -fr /install
