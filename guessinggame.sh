#!/bin/bash
guess=0
count=$(ls -1 | wc -l)

function check_guess {
  if [[ $guess -lt $count ]]
  then
    echo "Your guess was less than the correct number."
  elif [[ $guess -gt $count ]]
  then
    echo "Your guess is greater than the correct number."
  else
    echo "Congratulations, you are right!"
  fi
}

echo "Guess how many files are in the current directory!"
while [[ ! $guess -eq $count ]]
do
  echo "Type your guess as a single integer, then hit [ENTER]: "
  read guess
  check_guess
done
