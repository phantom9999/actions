#!/bin/sh
set -x

echo ${GITHUB_WORKSPACE}

cd ${GITHUB_WORKSPACE}
sh -x ${INPUT_SHELL_MAIN}

