#!/bin/bash

# Script 3: Disk and Permission Auditor
# This script checks directory size and permissions

# List of directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# Loop through directories
for DIR in "${DIRS[@]}"
do
    if [ -d "$DIR" ]
    then
        PERM=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERM | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

# Check Python config directory
CONFIG_DIR="/etc/python3"

if [ -d "$CONFIG_DIR" ]; then
    PERM=$(ls -ld $CONFIG_DIR | awk '{print $1, $3, $4}')
    echo "Config Dir ($CONFIG_DIR) => Permissions: $PERM"
else
    echo "Config directory not found"
fi
