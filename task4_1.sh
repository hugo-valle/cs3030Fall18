#!/bin/bash -
#===============================================================================
#
#          FILE: task4_1.sh
#
#         USAGE: ./task4_1.sh
#
#   DESCRIPTION: Write a script that takes three input parameter as follows:
#               -f firstName
#               -l lastName
#               -t teamName
#           Display the options to STDOUT
#
#        AUTHOR: Hugo Valle (hvalle), hugovalle1@weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/17/2018 02:21:47 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

while getopts ":l:f:t:" opt
do
    case $opt in
        l)  echo "Function for -l" 
            lname=$OPTARG
            ;;

        f) echo "Function for -f" 
            fname=$OPTARG
            ;;
        
        t) echo "Function for -t"
            tname=$OPTARG
            ;;

        # If you need to test ? use \?
        \?) echo "Function for help"
            ;;
        *) echo "An unexpected parsing error occurred."
            exit 2
            ;;
    esac
done
echo "Hi [$fname] [$lname] your team is [$tname]"

exit 0
