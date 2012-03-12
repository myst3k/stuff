#!/usr/bin/env bash

# Debug mode, same as set -x
#set -o xtrace

# Exit if attempting to use uninitialized variable, same as set -u
set -o nounset
# Exit if statement returns non-true value, same as set -e
set -o errexit
# Removes the "space" character from the input field separator list
IFS="$(printf '\n\t')"

args=("$@")
argument1=${args[0]}
argument2=${args[1]}

# Use "getopt" to parse cli flags, not "getopts"
