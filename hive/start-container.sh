#!/bin/bash

docker run -itd \
  --net=hadoop \
  -p 10000:10000 \
  --name hive \
  --hostname \
  hive 172.20.110.174:5000/hive:3.1.3 &> /dev/null