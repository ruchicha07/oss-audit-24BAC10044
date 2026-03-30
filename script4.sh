#!/bin/bash
# Script 4: Log Scan | User: ruchicha_bharti
LOG="audit.log"
echo -e "ERROR: Fail\nINFO: Python OK\nERROR: Timeout" > $LOG
ERRS=0; PY=0

while read -r LINE; do
    [[ "$LINE" == *"ERROR"* ]] && ((ERRS++))
    [[ "$LINE" == *"Python"* ]] && ((PY++))
done < "$LOG"

echo "Log Summary for $LOG:"
echo "Errors: $ERRS | Python Events: $PY"
rm $LOG
