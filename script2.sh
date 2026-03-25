#!/bin/bash

# Script 2: Check if Python is installed

SOFTWARE="python3"

# Check installation
if dpkg -l | grep -q $SOFTWARE
then
    echo "$SOFTWARE is installed"

    # Get version
    VERSION=$($SOFTWARE --version)
    echo "Version: $VERSION"

    # Description using case
    case $SOFTWARE in
        python3)
            echo "Python: used for scripting, automation, and development"
            ;;
        *)
            echo "Unknown software"
            ;;
    esac

else
    echo "$SOFTWARE is not installed"
fi
