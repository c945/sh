#!/bin/sh
#
# disable password authentication for sshd
#
/bin/sed -i.prev -e 's/^\(passwordauthentication\)/#\1/i' -e '$aPasswordAuthentication no' /etc/ssh/sshd_config

# Future: enable password authentication from internal address
# Match address 10.0.0.0/8
#  PasswordAuthentication yes
#  PermitRootLogin yes

# Future: check and rollback
# /usr/sbin/sshd -t || /bin/cp -p /etc/ssh/sshd_config.prev /etc/ssh/sshd_config

# for CentOS6 and CentOS7
/sbin/service sshd restart
