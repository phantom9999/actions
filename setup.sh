#!/bin/sh
set -x

# `$*` expands the `args` supplied in an `array` individually 
# or splits `args` in a string separated by whitespace.
sh -c "echo $*"
echo ${GITHUB_WORKSPACE}
echo ${INPUT_SHELL_MAIN}
echo ${INPUT_SHELL_PRE}
echo ${INPUT_SHELL_POST}


zypper install git nodejs10
git clone https://github.com/actions/checkout.git && cd checkout && node dist/index.js



