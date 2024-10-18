#!/bin/bash

RED='\033[0;31m'
CLEAR='\033[0m'

echo 'Enter username to create new user:'
read username
if grep -q $username /etc/passwd
then
	echo -e "User ${RED}$username ${CLEAR}already exists!"
else
	sudo useradd -m -s /bin/bash $username
	if grep -q $username /etc/passwd
	then
		echo -e "User ${RED}$username ${CLEAR}created!"
	else
		echo -e "An error occured while creating user ${RED}$username${CLEAR}!"
	fi
fi
