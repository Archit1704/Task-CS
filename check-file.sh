#!/bin/bash

echo "Enter file name:"
read file

if [ -e "$file" ]; then
if [ -r "$file" ]; then
cat "$file"
else
echo "Permission denied: Cannot read '$file'"
fi
else
echo "File not found"
fi

