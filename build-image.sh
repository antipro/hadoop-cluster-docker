#!/bin/bash

echo ""

echo -e "\nbuild docker hadoop image\n"
docker build -t 172.20.110.174:5000/hadoop:3.3.4 .

echo ""