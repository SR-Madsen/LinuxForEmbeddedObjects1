#!/bin/bash
sudo /home/pi/bin/led_blink.sh &
sudo /home/pi/bin/power_off.sh &

sudo sysctl -w net.ipv4.ip_forward=1
sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
