#!/bin/sh

# `$*` expands the `args` supplied in an `array` individually 
# or splits `args` in a string separated by whitespace.
sh -c "echo $*"
cd $1
sh $2

