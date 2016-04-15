#!/bin/sh
set -x
$(openssl dhparam -out /etc/openvpn/dh2048.pem 2048)
echo "Next:"
echo "./v_source.sh"