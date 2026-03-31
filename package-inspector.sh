#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="python3"   # Your chosen software

# Check if package is installed
# Using dpkg since WSL typically uses Ubuntu/Debian
if dpkg -s $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    echo "--- Package Details ---"
    # dpkg -s pulls the package info, grep filters for Version and Description
    dpkg -s $PACKAGE | grep -E '^Version|^Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo "-----------------------"

# TODO: Add a case statement that prints a one-line 
# philosophy note about the package based on its name
case $PACKAGE in
    httpd|apache2) 
        echo "Apache: the web server that built the open internet" ;;
    mysql|mysql-server) 
        echo "MySQL: open source at the heart of millions of apps" ;;
    python3)
        echo "Python: A language shaped entirely by community" ;;
    vlc)
        echo "VLC: The media player that plays everything, freely" ;;
    firefox)
        echo "Firefox: Fighting for a free and open web" ;;
    *)
        echo "A great piece of Free and Open Source Software!" ;;
esac
