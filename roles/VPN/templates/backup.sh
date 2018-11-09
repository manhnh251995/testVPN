#/bin/bash
#delete GRE tunnel
ip link set gre1 down
ip tunnel del gre1

# Del route
ip ro del 172.16.10.0/24 via 20.20.20.2
ip r del 100.0.0.0/24 via 20.20.20.2
ip route del 192.168.0.0/16 via 20.20.20.2
ip ro del 172.31.3.32/27 via 20.20.20.2
ip ro del 10.3.0.0/16 via 20.20.20.2
ip ro del 172.16.0.0/16 via 20.20.20.2
ip ro del 172.17.0.0/16 via 20.20.20.2
ip ro del 172.18.0.0/16 via 20.20.20.2
ip ro del 172.24.8.0/22 via 20.20.20.2
ip route del 192.168.249.250/32 via 20.20.20.2
ip ro del 10.5.52.0/22 via 20.20.20.2
ip ro del 10.5.52.96/32 via 20.20.20.2
