#!/bin/bash

if [ "$#" != "1" ]; then
        echo "usage: ./cc_dctcp.sh <cc>"
        exit 65
fi

SERVER=$SERVER_A
CLIENT=$CLIENT_A

cc=$1
sh/set_tcp_cc.sh $SERVER $cc

if [ "$cc" == "bbr" ]; then
        cc='cubic'
fi
if [ "$cc" == "bbr_ecn" ]; then
        cc='cubic_ecn'
fi

sh/set_tcp_cc.sh $CLIENT $cc


