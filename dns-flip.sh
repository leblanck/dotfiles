#!/bin/sh

currentDNS=$(networksetup -getdnsservers Wi-Fi)
if [[ $currentDNS = "8.8.8.8" ]]; then
    sudo networksetup -setdnsservers Wi-Fi 192.168.40.105
    echo "Changed DNS to Private AdGuard DNS"
else
    sudo networksetup -setdnsservers Wi-Fi 8.8.8.8
    echo "Changed DNS to Google DNS"
fi
