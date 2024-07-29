#!/usr/bin/env bash
# Script parses /proc/uptime to get the system uptime
# and prints it in a human-readable format on two lines
# This is a workaround for system where `uptime` command is taken from coreutils
# where `uptime -p` is not supported

if [[ -r /proc/uptime ]]; then
  s=$(< /proc/uptime)
  s=${s/.*}
else
  echo "Error UptimeNixOS.sh: Uptime could not be determined." >&2
  exit 1
fi

d="$((s / 60 / 60 / 24)) days"
h="$((s / 60 / 60 % 24)) hours"
m="$((s / 60 % 60)) minutes"

# Remove plural if < 2.
((${d/ *} == 1)) && d=${d/s}
((${h/ *} == 1)) && h=${h/s}
((${m/ *} == 1)) && m=${m/s}

# Hide empty fields and build the uptime string with line breaks
uptime_str=""
if [[ -n "$h" ]]; then
  uptime_str+="$h, "
fi
if [[ -n "$m" ]]; then
  uptime_str+="$m"
fi

# Remove trailing comma and spaces (if any)
uptime_str=${uptime_str%*, }

# Print formatted uptime on two lines
echo -e "$uptime_str"
