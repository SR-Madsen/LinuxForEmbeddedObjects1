#!/bin/bash

mpstat -P ALL | awk '{if ($3 != "CPU" && $3 != "all") print $3 " " $13}'
