#!/bin/sh
set -x
$(cd /etc/openvpn/easy-rsa && ./build-key userPC)
# $(cp /usr/share/doc/openvpn/examples/sample-config-files/client.conf /etc/openvpn/easy-rsa/keys/userPC.ovpn)
$(cp -f ~/v/client.conf /etc/openvpn/userPC.ovpn)
echo "Next:"
echo "./v_net.sh"