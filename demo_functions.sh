#!/usr/bin/env bash

source "functions/count_lines.sh"
source "functions/format_size.sh"
source "functions/format_time.sh"

# count_lines
echo "The file /etc/passwd has $(count_lines "/etc/passwd") lines"

# format_size
size=92873496
echo "$size Bytes = $(format_size $size)"

# format_time
seconds=86600
echo "$seconds Seconds = $(format_time $seconds)"
