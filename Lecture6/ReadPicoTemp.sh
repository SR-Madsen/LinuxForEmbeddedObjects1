#!/bin/bash

read reading < /dev/ttyACM0
echo $reading
