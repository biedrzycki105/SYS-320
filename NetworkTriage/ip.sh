#!/bin/bash
ip addr | awk '$1 ~ /^inet/ && $1 !~ /inet6/ {print $2}'
