#!/bin/sh
# Give all permissions to everyone
if [ $# -ne 1 ];
then
	echo "Please write the name of your file and nothing else."
else

	if test ! -f $1
	then
		echo "There is no file \"$1\"."
	else
		chmod a+rwx $1
		echo "Permissions changed."
	fi
fi
