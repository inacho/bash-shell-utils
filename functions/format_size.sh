#!/usr/bin/env bash

# Display the size of Bytes in human readable format

format_size()
{
    size=$1

    if [[ $size -ge 1073741824 ]]; then
        fs=$(echo - | awk "{print $size/1073741824}")
        fs=${fs/./,}
        printf "%.2f GiB" $fs
    else
        if [[ $size -ge 1048576 ]]; then
            fs=$(echo - | awk "{print $size/1048576}")
            fs=${fs/./,}
            printf "%.2f MiB" $fs
        else
            if [[ $size -ge 1024 ]]; then
                fs=$(echo - | awk "{print $size/1024}")
                fs=${fs/./,}
                printf "%.2f KiB" $fs
            else
                printf "%d Bytes" $size
            fi
        fi
    fi
}
export -f format_size
