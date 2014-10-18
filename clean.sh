#!/usr/bin/env bash
#===============================================================================
#
#          FILE: clean.sh
# 
#         USAGE: ./clean.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 18/10/14 13:59
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

for i in `cat ~/clean.txt`; do
    \rm -fr "$HOME/$i"
done
