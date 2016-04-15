#!/bin/sh
set -x
$(cp -r /usr/share/easy-rsa/* /etc/openvpn/easy-rsa/)
$(cp -f ~/v/vars /etc/openvpn/easy-rsa/vars)
echo "Next:"
echo "./v_dh.sh"