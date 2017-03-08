#!/bin/sh

/sbin/iptables -A INPUT -p icmp -j ACCEPT
/sbin/iptables -A INPUT -i eth1 -j DROP

/sbin/chkconfig NetworkManager off
/sbin/service NetworkManager stop
