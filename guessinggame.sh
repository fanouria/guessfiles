#!/usr/bin/env bash
# File: guessinggame.sh

function isinteger {
re='^[0-9]+$'
if ! [[ $1 =~ $re ]] ; then
   echo "error: Not an integer" >&2
fi
}

echo "Try to guess how many files are in the current directory!"
while true;
do
echo "Type your guess and then press Enter:"
read guess
isinteger $guess
nfile=$(ls -l| wc -l)
if [[ $guess -eq  $nfile ]]
then
  echo "Congratulations!!! Your guess is right."
  break
elif [[ $guess -gt  $nfile ]]
then
  echo "Your guess is too high."
else
  echo "Your guess is too low."
fi
done

