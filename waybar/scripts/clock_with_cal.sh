#!/bin/bash

time=$(date '+%H:%M')
today=$(date '+%e' | sed 's/^ *//')  # Remove leading space (e.g., " 7" → "7")

calendar=$(cal | sed "s/\b$today\b/[$today]/")

# Escape newlines for JSON
calendar_escaped=$(echo "$calendar" | sed ':a;N;$!ba;s/\n/\\n/g')

echo "{\"text\": \"$time\", \"tooltip\": \"$calendar_escaped\"}"
