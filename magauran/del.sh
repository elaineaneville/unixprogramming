#!/bin/bash
# Delete a file interactively

direc = false
if test ! -f $1
then
	if test -d $1
	then
		direc = true
	else
		echo "There is no file \"$1\"."
	fi
else
	echo "Do you want to delete \"$1\"?"
	read choice
	
	if test $choice = y
	then
		if $direc
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
