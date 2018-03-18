#!/bin/bash

function checkRange {
	if ! [[ $input =~ $num_checker ]]
	then
   		echo "\`$input\` is not a number" >&2;
		return 255
	elif [[ $input -gt $num_of_files ]]
	then
		echo "The number you entered is too big."
		return 1
	elif [[ $input -lt $num_of_files ]]
	then
		echo "The number you entered is too small."
		return 2
	else
		echo "Congratulations! You guessed it!"
	fi
	return 0
}

num_of_files=$(ls -Al | grep -c "^[l-]")
echo "How many files are in the current directory?"

num_checker='^[0-9]+$' #regex used to check if the user input is a number

while :
do
	read input
	checkRange
	[[ $? -eq 0 ]] && break
done
