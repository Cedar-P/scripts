#!/bin/sh
oldrxbytes=$(cat /sys/class/net/eth0/statistics/rx_bytes)
sleep 1s
rxbytes=$(cat /sys/class/net/eth0/statistics/rx_bytes)
nettraffic=$(expr $rxbytes - $oldrxbytes)
echo $nettraffic
