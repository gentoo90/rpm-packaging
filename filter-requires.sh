#!/bin/sh
# set -x
# The filter is first argument and the original script name is second:
filter=$1
# echo "$filter" >> /tmp/filter.txt
shift
# echo "$@" >> /tmp/args.txt
"$@" | grep -v -P "$filter"
