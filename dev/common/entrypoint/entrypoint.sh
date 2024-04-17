#!/bin/sh -xe

/entrypoint/openssh.sh
/entrypoint/docker.sh

tail -f /dev/null
