#!/usr/bin/env bash

source "functions/count_lines.sh"
source "functions/format_size.sh"
source "functions/format_time.sh"


# count_lines
echo "The file /etc/passwd has $(count_lines "/etc/passwd") lines"
# Output example:
#   The file /etc/passwd has 83 lines


# format_size
size=92873496
echo "$size Bytes = $(format_size $size)"
# Output example
#   92873496 Bytes = 88,57 MiB


# format_time
seconds=86600
echo "$seconds Seconds = $(format_time $seconds)"
# Output example
#   86600 Seconds = 1 day, 3 minutes, 20 seconds
