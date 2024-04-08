#!/bin/sh -xe

cat >>/etc/apt/apt.conf.d/99custom <<EOF
Acquire::Retries "100";
Acquire::https::Timeout "240";
Acquire::http::Timeout "240";
APT::Get::Assume-Yes "true";
APT::Install-Recommends "false";
APT::Install-Suggests "false";
Debug::Acquire::https "true";
EOF

cat >>/etc/apt/apt.conf.d/80-retries <<EOF
APT::Acquire::Retries "3";
EOF

export DEBIAN_FRONTEND="noninteractive"
apt-get update >/dev/null
apt-get install -y apt-utils gpg-agent python3-launchpadlib locales locales-all >/dev/null
apt install --reinstall software-properties-common >/dev/null

/setup/install/man.sh
/setup/install/ssl.sh
/setup/install/git.sh
/setup/install/zip.sh
/setup/install/curl.sh
/setup/install/wget.sh
/setup/install/httpie.sh
/setup/install/ping.sh
/setup/install/openssh.sh
/setup/install/gh.sh
/setup/install/less.sh
/setup/install/tree.sh
/setup/install/bat.sh
/setup/install/chroma.sh
/setup/install/jq.sh
/setup/install/fzf.sh
/setup/install/fd.sh
/setup/install/percol.sh
/setup/install/pre-commit.sh
/setup/install/thefuck.sh
/setup/install/zoxide.sh
/setup/install/icdiff.sh
/setup/install/colordiff.sh
/setup/install/dyff.sh
/setup/install/pandoc.sh
/setup/install/autojump.sh
/setup/install/htop.sh
/setup/install/ripgrep.sh
/setup/install/bitwise.sh
/setup/install/eza.sh
/setup/install/tmux.sh
/setup/install/zsh.sh
/setup/install/nvim.sh
