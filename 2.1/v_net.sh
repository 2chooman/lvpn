#!/bin/sh
set -x
$(echo 1 > /proc/sys/net/ipv4/ip_forward)
$(echo "net.ipv4.ip_forward=1" > /etc/sysctl.conf)
$(iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -o venet0 -j MASQUERADE)
echo "Next:"
echo "apt-get -y install iptables-persistent"
echo "./v_finish.sh"