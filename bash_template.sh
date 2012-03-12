#!/usr/bin/env bash

# Debug mode, same as set -x
#set -o xtrace

# set -eu Sames as setting nounset, and errexit
# Exit if attempting to use uninitialized variable
set -o nounset
# Exit if statement returns non-true value
set -o errexit
# Removes the "space" character from the input field separator list
IFS="$(printf '\n\t')"

args=("$@")
argument1=${args[0]}
argument2=${args[1]}

# Use getopts to parse cli flags
