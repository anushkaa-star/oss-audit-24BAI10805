#!/bin/bash

PACKAGE="python3"

if command -v $PACKAGE &> /dev/null
then
    echo "$PACKAGE is installed"
    $PACKAGE --version
else
    echo "$PACKAGE is not installed"
fi

case $PACKAGE in
    python3) echo "Python: simple and powerful programming language" ;;
    git) echo "Git: version control system" ;;
    vlc) echo "VLC: media player" ;;
    *) echo "Unknown package" ;;
esac
