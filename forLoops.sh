#!/bin/bash -
#===============================================================================
#
#          FILE: forLoops.sh
#
#         USAGE: ./forLoops.sh
#
#   DESCRIPTION: Practice for loops
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Hugo Valle (hvalle), hugovalle1@weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/10/2018 02:19:57 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

for team in Yankees Dodgers RedSoxs
do
    echo "I really like $team"
done

# Define array
teams="Yankees Dodgers RedSoxs"
for team in $teams
do
    echo "I really like $team yeah"
done

# Task Ask user to enter favorite teams: space separated
# then, create a function and display one by one 

list_teams()
{
    # Number of params $#
    # String off all params $*
    for team in $*
    do
        echo "(inside function): I really like $team yeah"
    done
}
echo -ne "Enter your fav teams: "
read superTeams

# Call function with params
list_teams $superTeams $teams





echo "Wow your teams are great"
exit 0
