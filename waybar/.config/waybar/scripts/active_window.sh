#!/bin/bash

# Full paths to commands
HYPRCTL="/usr/bin/hyprctl"
JQ="/usr/bin/jq"

# Fetch the active window information
active_window=$($HYPRCTL activewindow -j | $JQ -r '.class')

# Check if there's an active window
if [[ -z "$active_window" || "$active_window" == "null" ]]; then
  echo "No active program"
else
  # Customize the output with an icon (add more icons as needed)
  case "$active_window" in
    "Brave-browser") echo " Brave";;
    "code-oss") echo " VS-Code";;
    "kitty") echo " Terminal";;
    "dolphin") echo " File Manager";;
    "Spotify") echo " Spotify";;
    "jetbrains-studio")echo " Android Studio" ;;
    "org.telegram.desktop") echo " Telegram";;
    *)
      echo "$active_window" # Fallback: just show the program name
      ;;
  esac
fi

