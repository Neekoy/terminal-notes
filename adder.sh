#!/bin/bash

if [[ $# -eq 0 ]]
then
        echo "Please enter your search terms for a note."
        exit 0
fi

echo "Please enter the search keywords for this entry:"

read keywords

echo "Please enter the content for this entry:"

read content

SCRIPT=$(realpath $0)
SCRIPTPATH=$(dirname $SCRIPT)

completeWord=""

for word in ${keywords}
do
	if [[ ${completeWord} = "" ]]
	then
		completeWord="${word}"
	else
		completeWord+="-${word}"
	fi
done

touch ${SCRIPTPATH}/content/${completeWord}

echo ${content} > ${SCRIPTPATH}/content/${completeWord}
