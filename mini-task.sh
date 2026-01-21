#!/bin/bash

USER_NAME=$(whoami)
HOSTNAME=$(hostname)
DATE_TIME=$(date)

echo -e "Welcome, $USER_NAME 👋"
echo -e "Host: $HOSTNAME"
echo -e "Date & Time: $DATE_TIME"
echo

echo -e "System Uptime:"
uptime
echo

echo -e "Last Logged-in Users:"
last -a | head -n 5
echo

echo -e "Disk Usage:"
df -h
echo

echo -e "Memory Usage:"
free -h
echo

echo -e "Top CPU Consuming Processes:"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6
echo
