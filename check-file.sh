#!/bin/bash

file="$1"

if [ -z "$file" ]; then
echo "Usage: $0 filename"
exit 1
fi
if [ -e "$file" ]; then
if [ -r "$file" ]; then
cat "$file"
else
echo "Permission denied: Cannot read '$file'"
fi
else
echo "File not found"
fi

