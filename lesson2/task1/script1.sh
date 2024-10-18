#!/bin/bash

echo 'Insert filename: '
read filename
RED='\033[0;31m'
GREEN='\033[0;32m'
CLEAR='\033[0m'
YELLOW='\033[1;33m'
if grep -q error $filename
then
	echo -e "There is ${RED}error ${CLEAR}in file"
	echo -e "Do you want to delete ${YELLOW}$filename${CLEAR}? (Y/N)"
	rm -i $filename
	if ! [ $filename ]
	then
		echo "${YELLOW}$filename ${CLEAR}removed!"
	fi
else
	echo -e  "There is ${GREEN}no error ${CLEAR}in file"
fi
