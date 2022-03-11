#!/bin/bash

df -h / | awk '{if ($1 != "Filesystem") print $5}'
