#!/bin/bash

for iface in /sys/class/net/*; do
    dev=$(basename "$iface")

    # Check if it's an Ethernet interface
    [ "$(cat "$iface"/type)" = "1" ] || continue
    [ -f "/sys/class/net/$dev/address" ] || continue

    if ethtool "$dev" &>/dev/null; then
        ethtool -s "$dev" wol g
    fi
done
