#!/bin/bash

user_name=$(whoami)
host_name=$(hostname)
date_time=$(date)

echo -e "Welcome, $user_name 👋"
echo -e "Host: $host_name"
echo -e "Date & Time: $date_time"
echo

echo -e "System Uptime:"
uptime
echo

echo -e "Last Logged-in Users:"
last | head -n 5
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
