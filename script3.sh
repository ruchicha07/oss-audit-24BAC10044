#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: ruchicha_bharti | Course: OSS

# Array of directories to audit [cite: 152]
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/home/ruchicha_bharti/.config")

echo -e "DIRECTORY\tPERMISSIONS\tOWNER\tSIZE"

# Loop through the list [cite: 154]
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract perms/owner using awk and size using cut [cite: 157, 148]
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo -e "$DIR\t$PERMS\t$OWNER\t$SIZE"
    else
        echo -e "$DIR\t[NOT FOUND]"
    fi
done
