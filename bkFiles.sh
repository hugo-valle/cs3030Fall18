#!/bin/bash -
#===============================================================================
#
#          FILE: bkFiles.sh
#
#         USAGE: ./bkFiles.sh
#
#   DESCRIPTION: Backup files
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Hugo Valle (hvalle), hugovalle1@weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/12/2018 01:51:49 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error
# get all files with .txt ext. 
tot=`wc -l *.txt*`
for file in `ls *.txt*`
do
    bk=`ls $file | cut -d '.' -f 3`
    # IF names have .bk do not rename
    if [[ $bk == "bk" ]]
    then
        #echo "Moving $file to data/${file}"
        mv $file data/${file}
    else
        # rename them
        #echo "Moving $file to data/${file}.bk"
        mv $file data/${file}.bk
    fi
done

echo "$tot files moved to data folder"
exit 0
