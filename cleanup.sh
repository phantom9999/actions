#!/bin/sh
set -x

# `$*` expands the `args` supplied in an `array` individually 
# or splits `args` in a string separated by whitespace.
sh -c "echo $*"
echo ${GITHUB_WORKSPACE}
echo ${INPUT_SHELL_MAIN}
echo ${INPUT_SHELL_PRE}
echo ${INPUT_SHELL_POST}

cd ${GITHUB_WORKSPACE}
sh ${INPUT_SHELL_POST}



