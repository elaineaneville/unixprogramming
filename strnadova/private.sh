#!/bin/sh
# Give all permissions to the owner and remove other permissions
if [ $# -ne 1 ];
then
	echo "Please write the name of your file and nothing else."
else

	if test ! -f $1
	then
		echo "There is no file \"$1\"."
	else
		chmod go-rwx $1
		chmod u+rwx $1
		echo "Permissions changed."
	fi
fi
