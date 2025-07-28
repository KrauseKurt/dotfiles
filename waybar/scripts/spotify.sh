#!/bin/bash

status=$(playerctl --player=spotify status 2>/dev/null)

if [ "$status" != "Playing" ] && [ "$status" != "Paused" ]; then
    echo '{"text": " 404 - NO SONG", "tooltip": "Spotify is not running"}'
    exit
fi

artist=$(playerctl --player=spotify metadata artist)
title=$(playerctl --player=spotify metadata title)

icon=" " # paused
[ "$status" = "Playing" ] && icon=" "

# Shorten long titles
short_title=$(echo "$title" | cut -c1-40)

# Escape for JSON
tooltip=$(echo "$artist - $title" | sed ':a;N;$!ba;s/\n/\\n/g')

echo "{\"text\": \"$icon $tooltip\", \"tooltip\": \"$tooltip\"}"
