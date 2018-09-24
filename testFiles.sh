#!/bin/bash -
#===============================================================================
#
#          FILE: testFiles.sh
#
#         USAGE: ./testFiles.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Hugo Valle (hvalle), hugovalle1@weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/17/2018 02:54:21 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

folder="data2"
# Test if folder exist
if [[ ! -d $folder ]]
then
    echo "Creating folder"
fi
echo "Moving files to folder"

folder="dups.csv"
# Test if file exist
if [[ ! -e $folder ]]
then
    echo "Creating file"
fi
echo "Processing file"



exit 0
