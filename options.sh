#!/bin/bash -
#===============================================================================
#
#          FILE: options.sh
#
#         USAGE: ./options.sh
#
#   DESCRIPTION: Learn how to use getopts
#
#        AUTHOR: Hugo Valle (hvalle), hugovalle1@weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/12/2018 03:06:38 PM
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

while getopts ":ibq" argv
do
    case $argv in
        "i")  echo "Function for -i" 
            ;;

        "b") echo "Function for -b" 
            ;;
        
        "q") echo "Function for -q"
            ;;

        # If you need to test ? use \?
        \?) echo "Function for help"
            ;;
        *) echo "An unexpected parsing error occurred."
            exit 2
            ;;
    esac
done
