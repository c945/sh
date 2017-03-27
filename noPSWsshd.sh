#!/bin/sh
#
# disable password authentication for sshd
#

/bin/sed -i.prev -e 's/^\(passwordauthentication\)/#\1/i' -e '$aPasswordAuthentication no' /etc/ssh/sshd_config

# for CentOS6 and CentOS7
/sbin/service sshd restart
