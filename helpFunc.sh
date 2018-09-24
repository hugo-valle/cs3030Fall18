#!/bin/bash -
#===============================================================================
#
#          FILE: helpFunc.sh
#
#         USAGE: ./helpFunc.sh
#
#   DESCRIPTION: Use functions
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Hugo Valle (hvalle), hugovalle1@weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/05/2018 02:58:45 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

helpFunction()
{
    echo "Usage $0 <param1>"
    # Here $1 is the input parameter to the FUNCTION
    # NOT the $1 from the program
    echo "Usage $0 <$1>"

}

main()
{
    if [[ $1 == "--help" ]]
    then 
        # call function
        # All functions MUST be declared before you use them
        helpFunction "MARIO"
    fi
}

# Start your program
input=$1
main $input

# Catch system calls and capture output to variable use single back ticks
OS=`uname`
echo "You are running in $OS"

echo "Done!"
exit 0
