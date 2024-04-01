#!/bin/sh -xe

cat >> /etc/apt/apt.conf.d/99custom <<EOF
Acquire::Retries "100";
Acquire::https::Timeout "240";
Acquire::http::Timeout "240";
APT::Get::Assume-Yes "true";
APT::Install-Recommends "false";
APT::Install-Suggests "false";
Debug::Acquire::https "true";
EOF

cat >> /etc/apt/apt.conf.d/80-retries <<EOF
APT::Acquire::Retries "3";
EOF

export DEBIAN_FRONTEND="noninteractive"
apt-get update > /dev/null
apt-get install -y apt-utils gpg-agent python3-launchpadlib > /dev/null
apt install --reinstall software-properties-common > /dev/null

apt-get install -y wget curl > /dev/null

/download/autojump.sh
/download/bat.sh
/download/bitwise.sh
/download/colordiff.sh
/download/zip.sh
/download/curl.sh
/download/fasd.sh
/download/fd.sh
/download/fzf.sh
/download/gh.sh
/download/git.sh
/download/htop.sh
/download/httpie.sh
/download/icdiff.sh
/download/jq.sh
/download/less.sh
/download/man.sh
/download/nvim.sh
/download/openssh.sh
/download/pandoc.sh
/download/ping.sh
/download/ripgrep.sh
/download/ssl.sh
/download/tmux.sh
/download/tree.sh
/download/wget.sh
/download/zsh.sh
