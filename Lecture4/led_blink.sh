#!/bin/bash

while :
do
echo "26" > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio26/direction
echo "1" > /sys/class/gpio/gpio26/value

sleep 0.5

echo "0" > /sys/class/gpio/gpio26/value
echo "26" > /sys/class/gpio/unexport

sleep 0.5
done
