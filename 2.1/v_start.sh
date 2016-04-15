#!/bin/sh
set -x
$(chmod +x v_vars.sh v_dh.sh v_source.sh v_server.sh v_client.sh v_net.sh v_finish.sh)
set -x
$(apt-get -y install openvpn openssl easy-rsa)
$(mkdir /etc/openvpn/easy-rsa)
set +x
echo "Next:"
echo "./v_vars.sh"