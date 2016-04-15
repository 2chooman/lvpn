#!/bin/sh
set -x
$(cd /etc/openvpn/easy-rsa && ./build-key-server server)
$(cp /etc/openvpn/easy-rsa/keys/server.crt /etc/openvpn)
$(cp /etc/openvpn/easy-rsa/keys/server.key /etc/openvpn)
$(cp /etc/openvpn/easy-rsa/keys/ca.crt /etc/openvpn)
# $(gunzip -c /usr/share/doc/openvpn/examples/sample-config-files/server.conf.gz > /etc/openvpn/server.conf)
$(cp -f ~/v/server.conf /etc/openvpn/server.conf)
$(openvpn --genkey --secret /etc/openvpn/ta.key)
echo "Next:"
echo "./v_client.sh"