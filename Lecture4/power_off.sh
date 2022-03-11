#!/bin/bash

count=3

while [ $count -gt 0 ]
do
	if [[ "$(sudo /home/pi/bin/read_switch.sh)" == "ON" ]]
	then
		count=$(( $count - 1 ))
	fi
	sleep 1
done

sudo poweroff
