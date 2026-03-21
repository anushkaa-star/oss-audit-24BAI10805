#!/bin/bash

echo "Answer the following questions:"

read -p "1. Name one open-source tool you use: " TOOL
read -p "2. What does freedom mean to you (one word)? " FREEDOM
read -p "3. What would you build and share? " BUILD

DATE=$(date)
OUTPUT="manifesto.txt"

echo "On $DATE, I believe that using $TOOL gives me the freedom of $FREEDOM. I would like to build $BUILD and share it with others." > $OUTPUT

echo "Manifesto saved in $OUTPUT"
cat $OUTPUT
