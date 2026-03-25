#!/bin/bash

# Script 1: System Identity Report
# This script displays basic system information like a welcome screen
# --- Variables ---
STUDENT_NAME="Anushka"
SOFTWARE_CHOICE="Python"

# --- System Information ---
DISTRO=$(lsb_release -d 2>/dev/null | cut -f2)
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE=$(date)

# --- Display Output ---
echo "======================================"
echo "   Open Source Audit — $STUDENT_NAME"
echo "======================================"
echo "Software : $SOFTWARE_CHOICE"
echo "Distro   : $DISTRO"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Home Dir : $HOME_DIR"
echo "Uptime   : $UPTIME"
echo "Date     : $DATE"
echo "License  : GNU General Public License (GPL)"
echo "======================================"
