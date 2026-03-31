#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./log_analyzer.sh /var/log/messages

LOGFILE=$1
KEYWORD=${2:-"error"}    # Default keyword is 'error'
COUNT=0

# TODO: Add a do-while style retry if the file is empty
# In bash, we simulate a do-while with a while true loop that breaks on success
while true; do
    # -f checks if it's a regular file, -s checks if it is NOT empty (>0 bytes)
    if [ -f "$LOGFILE" ] && [ -s "$LOGFILE" ]; then
        break
    fi
    
    echo "Error: File '$LOGFILE' is either empty or not found."
    read -p "Please enter a valid, non-empty log file path: " LOGFILE
done

# Read the file line by line and count matches
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "=========================================="
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "=========================================="

# TODO: print the last 5 matching lines using tail + grep
echo "--- Last 5 occurrences ---"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
echo "=========================================="
