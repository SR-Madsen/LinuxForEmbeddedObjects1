#!/bin/bash

echo "16" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio16/direction

if [[ "$(cat /sys/class/gpio/gpio16/value)"  == '1' ]]
then
	echo "ON"
else
	echo "OFF"
fi

echo "16" > /sys/class/gpio/unexport
