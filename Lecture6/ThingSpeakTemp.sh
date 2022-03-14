#!/bin/bash

cd /opt/LinuxForEmbeddedObjects1/

curl -X POST -d "field1=$(Lecture6/ReadPicoTemp.sh)" -d "api_key=P4E8T33ZRBUPS9Z7" https://api.thingspeak.com/update
