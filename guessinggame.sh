#!/usr/bin/env bash
# File: guessinggame.sh

function isinteger {
re='^[0-9]+$'
if ! [[ $1 =~ $re ]] ; then
guessinteger=0
else
guessinteger=1
fi
}

echo "Try to guess how many files are in the current directory!"
while true;
do
	echo "Type your guess and then press Enter:"
	read guess
	isinteger $guess
	while [[ $guessinteger = 0 ]] 
	do
		echo "Not an integer!Type again your guess and then press Enter:"
		read guess
		isinteger $guess
	done

	nfile=$(ls -l| wc -l)
	if [[ $guess -eq $nfile ]]
	then
		echo "Congratulations!!! Your guess is right."
	break
	elif [[ $guess -gt $nfile ]]
	then
		echo "Your guess is too high."
	else
		echo "Your guess is too low."
	fi
done
	
