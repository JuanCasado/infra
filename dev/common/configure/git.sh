#!/bin/sh -xe

su $DEV_USER 'git config --global user.email "jcb7777777@gmail.com"'
su $DEV_USER 'git config --global user.name "mrblissfulgrin"'
su $DEV_USER 'git config --global pull.rebase true'
su $DEV_USER 'git config --global push.autoSetupRemote true'
