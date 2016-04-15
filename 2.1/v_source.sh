#!/bin/sh
set -x
echo "CMD: cd /etc/openvpn/easy-rsa && source vars && ./clean-all && ./build-ca"
echo "Next:"
echo "cd ~/v && ./v_server.sh"