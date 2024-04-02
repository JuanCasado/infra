#!/bin/sh -xe

mkdir -p /download-cache/chroma-download
wget -P /download-cache/chroma-download -q https://github.com/alecthomas/chroma/releases/latest/download/chroma-2.13.0-linux-amd64.tar.gz
tar -xf /download-cache/chroma-download/chroma*.tar.gz
mv /download-cache/chroma-download/chroma /download-cache
rm -fr /download-cache/chroma-download
