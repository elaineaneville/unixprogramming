#!/bin/sh
# Delete a file interactively

if test ! -f $1 && test ! -d $1
then
	echo "There is no file \"$1\"."
else
	echo "Do you want to delete \"$1\"?"
	read choice

	if test $choice = y
	then
		if test -d $1
		then
			rmdir $1
		else
			rm $1
		fi
		echo "\"$1\" deleted."
	else
		echo "\"$1\" not deleted."
	fi
fi
