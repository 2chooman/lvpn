#!/bin/bash
set -x
$(mkdir /etc/openvpn/out)
$(cp -f /etc/openvpn/userPC.ovpn /etc/openvpn/out)
$(cp -f /etc/openvpn/easy-rsa/keys/userPC.key /etc/openvpn/out)
$(cp -f /etc/openvpn/easy-rsa/keys/userPC.crt /etc/openvpn/out)
$(cp -f /etc/openvpn/ca.crt /etc/openvpn/out)
$(cp -f /etc/openvpn/server.crt /etc/openvpn/out)
$(cp -f /etc/openvpn/ta.key /etc/openvpn/out)
$(tar -cvzf ~/v/out.tar.gz /etc/openvpn/out)