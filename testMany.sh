#!/bin/bash -
#===============================================================================
#
#          FILE: testMany.sh
#
#         USAGE: ./testMany.sh
#
#   DESCRIPTION: Multiple test conditions
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Hugo Valle (hvalle), hugovalle1@weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/05/2018 02:37:26 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

# 1) If $1  equals YES, print something
if [[ "$1" == "YES" ]]
then
    echo "Okay yes"
# 2) If $1  equals NO, print something
elif [[ $1 == "NO" ]]
then
    echo "Okay NO"
# 3) If $1  equals MAYBE, print something
elif [[ $1 == "MAYBE" ]]
then
    echo "Okay MAYBE"
# 4) ELSE , print "not supported"
else
    echo "I do not know this option [$1]"
fi

echo
echo "Done!"
