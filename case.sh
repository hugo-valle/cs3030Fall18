#!/bin/bash -
#===============================================================================
#
#          FILE: case.sh
#
#         USAGE: ./case.sh
#
#   DESCRIPTION: Test CASE statements
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Hugo Valle (hvalle), hugovalle1@weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/05/2018 02:48:39 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

echo "Enter a value"
read answer

# Case statements use:
# CASE <variable> in
#  Testcond1)  ;;
#  Testcond2)  ;;
#  Testcond3)  ;;
# ESAC                   
case $answer in
    "one")
        echo "Answer is one"
        ;;
    "two")
        echo "Answer is two"
        ;;
    "three")
        echo "Answer is three"
        ;;
     # Use wild card for "ELSE" case
     *)
        echo "Answer [$answer] is not supported"
        ;;
esac

echo "Done!"

exit 0
