#!/bin/bash

# Script 5: Open Source Manifesto Generator
# This script creates a small manifesto based on user input

echo "Create your own Open Source Manifesto"
echo "-------------------------------------"

# Taking input
read -p "Enter one open-source tool you use daily: " TOOL
read -p "What does freedom mean to you (one word)? " FREEDOM
read -p "What would you like to build and share? " BUILD

# Date and file name
TODAY=$(date)
FILE="my_manifesto.txt"

# Writing manifesto
echo "Date: $TODAY" > $FILE
echo "" >> $FILE
echo "I believe open source is about $FREEDOM." >> $FILE
echo "Tools like $TOOL help me learn and explore new things." >> $FILE
echo "In the future, I want to build $BUILD and share it with everyone." >> $FILE

# Output
echo ""
echo "Your manifesto has been saved in $FILE"
echo ""
cat $FILE
