#!/bin/sh

/usr/bin/systemctl stop firewalld
/usr/bin/systemctl disable firewalld

/usr/sbin/iptables -A INPUT -p icmp -j ACCEPT
/usr/sbin/iptables -A INPUT -i eth1 -j DROP
