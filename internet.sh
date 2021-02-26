
#! /bin/bash

sudo ip link set eno1 up
sudo ip addr add 192.168.0.101/24 dev eno1
sudo ip route add default via 192.168.0.1
