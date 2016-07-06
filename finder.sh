#!/bin/bash
path=$(pwd)
for each in $(find ${pwd}/content/ -type f -iname "*${1}*" -iname "*${2}*");
do echo;
eachUpper=$(echo ${each} | tr 'a-z' 'A-Z')
echo "$(tput setaf 3)$(tput bold)$(basename $eachUpper) $(tput sgr0)";
echo;
cat $each;
echo
done
