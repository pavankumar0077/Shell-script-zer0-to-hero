#!/bin/bash
## POST FIX MUST BE CONFIGURED FOR THIS SCRIPT

# Monitoring the free file system space disk
FU=$(df -H | egrep -v "Filesystem|tmpfs" | grep "nvme0n1p2" | awk '{print $5}' | tr -d %)
TO="dasarepavan007@gmail.com"

if [[ $FU -ge 43 ]]
then
        echo "WARNING, Disk space is  low -$FU %" | mail -s "Disk Space Alert" $TO
else
        echo "All good"
fi

# Commands
# df
# df -h
# df -H | egrep -v "Filesystem|tmpfs" | grep "nvme0n1p2"
# df -H | egrep -v "Filesystem|tmpfs" | grep "nvme0n1p2" | awk '{print $5}' | tr -d %