#!/bin/bash

# Check for updates
updates=$(yay -Qu | wc -l)

# Output for Waybar
if [ "$updates" -gt 0 ]; then
  echo "{\"text\": \" $updates\", \"tooltip\": \"$updates updates available\"}"
else
  echo "{\"text\": \"\", \"tooltip\": \"System is up to date\"}"
fi
