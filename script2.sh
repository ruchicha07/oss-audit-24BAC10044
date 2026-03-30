#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: ruchicha_bharti
# Course: Open Source Software

PACKAGE="python3"

# Check if package is installed [cite: 135]
if dpkg -l $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    # Extract Version and License using pipes [cite: 139]
    apt-cache show $PACKAGE | grep -E 'Version|License' | head -n 2
else
    echo "$PACKAGE is NOT installed."
    exit 1
fi

# Case statement for philosophy note [cite: 141]
case $PACKAGE in
    python3) echo "Python: A language shaped by community consensus." ;;
    apache2) echo "Apache: The web server that built the open internet." ;;
    mysql*)  echo "MySQL: Open source at the heart of millions of apps." ;;
    *)       echo "A verified Open Source tool." ;;
esac
