#!bin/bash
# Prevent Hypridle from idiling if RetroArch is running
if pgrep -x "retroarch" >/dev/null; then
  # Retroarch is open - do nothing
  exit 1
else
  # No Retroarch is running - allow idle
  exit 0
fi
