#!/bin/sh
#
# Parasoft C/C++test - cpptestscan.sh 10.7.1.CMAKE -- Copyright (C) 2024 Parasoft Corporation
#
# C/C++test utility to scan project information from the build process.
# 

# Default settings
OUTPUT_FILE=/home/gtrofimov/examples/Timer/Timer.bdf
PROJECT_NAME=Timer
RUN_ORIG_CMD=no
CMD_LINE_PREFIX=

print_record()
{
    # Print build info into output file
    echo "------- cpptestscan v.10.7.1.CMAKE -------"
    echo "working_dir=`pwd`"
    echo "project_name=$PROJECT_NAME"
    for arg in "$@" ; do
        echo "arg=$arg"
    done
}

record="$(print_record "$@")"

echo "$record" >> $OUTPUT_FILE

# Run original command
if [ "1" = "$RUN_ORIG_CMD" ] || [ "on" = "$RUN_ORIG_CMD" ] || [ "yes" = "$RUN_ORIG_CMD" ] ; then
    if [ ".$CMD_LINE_PREFIX" = "." ] ; then
        exec "$@"
    else
        exec "$CMD_LINE_PREFIX" "$@"
    fi
else
    exit 0
fi
