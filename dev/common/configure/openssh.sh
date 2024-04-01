#!/bin/sh -xe

# SSH public key
set +x
. /setup/configure/openssh.secret
echo $SSH_PUB_KEY > /home/$DEV_USER/.ssh/authorized_keys
set -x

# Enable user environment
sed -i -e 's/.*PermitUserEnvironment.*/PermitUserEnvironment yes/g' /etc/ssh/sshd_config
echo "PATH=\$SSH_PATH:\$PATH" >> /home/$DEV_USER/.profile
