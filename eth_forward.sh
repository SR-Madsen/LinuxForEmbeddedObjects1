#!/bin/bash

sudo sysctl -w net.ipv4.ip_forward=1
sudo iptables -t nat -A POSTROUTING -o wlp61s0 -j MASQUERADE

echo "Forwarding enabled."
