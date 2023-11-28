#!/bin/bash

echo "Server name is :"
uname -a
echo "File System utilization"
dh -h
echo "Port utilization"
netstat -plntu