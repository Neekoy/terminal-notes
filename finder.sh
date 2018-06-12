#!/bin/bash

if [[ $# -eq 0 ]]
then
        echo "Please enter your search terms for a note."
        exit 0
fi

SCRIPT=$(realpath $0)
SCRIPTPATH=$(dirname $SCRIPT)
for each in $(find ${SCRIPTPATH}/content/ -type f -iname "*${1}*" -iname "*${2}*");
do echo;
eachUpper=$(echo ${each} | tr 'a-z' 'A-Z')
echo "$(tput setaf 3)$(tput bold)$(basename $eachUpper) $(tput sgr0)";
echo;
cat $each;
echo
done
