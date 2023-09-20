#!/bin/bash

i=0

for item in `ip a | awk '$1 ~ /^inet/ && $1 !~ /inet6/ { print $2}'`; do
  arr[$i]=$item
  i=`expr $i + 1`
done

i=0
for item in ${arr[*]}; do
  echo "interface" $i: ${arr[$i]}
  echo ""
  i=`expr $i + 1`
done


