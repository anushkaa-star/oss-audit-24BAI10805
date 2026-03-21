#!/bin/bash

STUDENT_NAME="Anushka"
SOFTWARE_CHOICE="Python"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(who)
DATE=$(date)

echo "===================================="
echo " Open Source Audit — $STUDENT_NAME"
echo "===================================="
echo "Software : $SOFTWARE_CHOICE"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Uptime   : $UPTIME"
echo "Date     : $DATE"
echo "===================================="
