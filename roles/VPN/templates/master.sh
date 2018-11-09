#!/bin/bash

#Create GRE tunnel
ip tunnel add gre1 mode gre remote 192.168.17.201 local 192.168.17.200 ttl 255
ip link set gre1 up
ip addr add 20.20.20.1/24 dev gre1

# Add route 
ip rou add 172.16.10.0/24 via 20.20.20.2
ip rou add 100.0.0.0/24 via 20.20.20.2
ip route add 192.168.0.0/16 via 20.20.20.2
ip ro add 172.31.3.32/27 via 20.20.20.2
ip ro add 10.3.0.0/16 via 20.20.20.2
ip ro add 172.16.0.0/16 via 20.20.20.2
ip ro add 172.17.0.0/16 via 20.20.20.2
ip ro add 172.18.0.0/16 via 20.20.20.2
ip ro add 172.24.8.0/22 via 20.20.20.2
ip route add 192.168.249.250/32 via 20.20.20.2
ip ro add 10.5.52.0/22 via 20.20.20.2
ip ro add 10.5.52.96/32 via 20.20.20.2
