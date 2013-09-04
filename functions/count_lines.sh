#!/usr/bin/env bash

# Count the lines of a file

count_lines()
{
    wc -l "$1" | sed "s/ *\([0-9]*\).*/\1/"
}
export -f count_lines
