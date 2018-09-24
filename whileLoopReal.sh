#!/bin/bash -
#===============================================================================
#
#          FILE: whileLoopReal.sh
#
#         USAGE: ./whileLoopReal.sh
#
#   DESCRIPTION: The REAL use of while loops
#
#        AUTHOR: Hugo Valle (hvalle), hugovalle1@weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/12/2018 02:24:41 PM
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

filename=$1

if [[ ! -r $filename ]]
then
    echo "Error: Can not read $filename"
fi

echo "File has the following info: "
# Use the read command to read from files
# You can use the list of file(s) at the bottom
# of your while loop as INPUT to the loop
while read myline
do
    echo "$myline"
done < $filename


exit 0
