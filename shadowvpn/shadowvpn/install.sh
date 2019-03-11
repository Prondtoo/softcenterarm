#!/bin/sh

if [ ! -d /jffs/configs/dnsmasq.d ]; then 
   mkdir -p /jffs/configs/dnsmasq.d
fi

chmod a+x /tmp/shadowvpn/scripts/*
chmod a+x /tmp/shadowvpn/webs/*
chmod a+x /tmp/shadowvpn/bin/*

cp -rf /tmp/shadowvpn/scripts/* /jffs/softcenter/scripts/
cp -rf /tmp/shadowvpn/webs/* /jffs/softcenter/webs/
cp -rf /tmp/shadowvpn/bin/* /jffs/softcenter/bin/
cp -rf /tmp/shadowvpn/dnsmasq.d/* /jffs/configs/dnsmasq.d/
rm -rf /tmp/shadowvpn >/dev/null 2>&1

