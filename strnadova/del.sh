#!/bin/sh
#Delete a file or directory interactively

if test ! -f $1  &&  test ! -d $1
then
	echo "There is no file or directory \"$1\"."
else
	echo "Do you want to delete \"$1\"?"
	read choice

	if test $choice = y
	then
		if test -f $1
		then
			rm $1
		else
			rmdir $1
		fi
		echo "\"$1\" deleted"
	else
		echo "\"$1\" not deleted"
	fi
fi
