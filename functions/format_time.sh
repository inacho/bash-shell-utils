#!/usr/bin/env bash

# Display elapsed seconds in human readable format

format_time()
{
    time=$1
    level=$2
    rest=0

    if [[ $level != "" ]]; then
        level=0
        echo -n ", "
    fi

    if [[ $time -lt 60 ]]; then
        echo -n $time
        if [[ $time == 1 ]]; then
            echo -n " second"
        else
            echo -n " seconds"
        fi
    elif [[ $time -lt 3600 ]]; then
        fp=$(($time / 60))
        t=$(floor $fp)
        echo -n $t
        if [[ $t == 1 ]]; then
            echo -n " minute"
        else
            echo -n " minutes"
        fi
        rest=$(($time % 60))
    elif [[ $time -lt 86400 ]]; then
        fp=$(($time / 3600))
        t=$(floor $fp)
        echo -n $t
        if [[ $t == 1 ]]; then
            echo -n " hour"
        else
            echo -n " hours"
        fi
        rest=$(($time % 3600))
    else
        fp=$(($time / 86400))
        t=$(floor $fp)
        echo -n $t
        if [[ $t == 1 ]]; then
            echo -n " day"
        else
            echo -n " days"
        fi
        rest=$(($time % 86400))
    fi

    if [[ $level -lt 2 && $rest != 0 ]]; then
        level=$(($level + 1))
        format_time $rest $level
    else
        echo ""
    fi
}
export -f format_time

floor()
{
    float_in=$1
    floor_val=${float_in/.*}
    echo $floor_val
}
export -f floor
