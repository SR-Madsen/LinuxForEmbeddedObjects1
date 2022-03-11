#!/bin/bash

awk '/MemFree/ { printf "%.3f Gb \n", $2/1024/1024 }' /proc/meminfo
