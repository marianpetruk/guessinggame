#!/usr/bin/env bash
# File: guessinggame.sh

function check_answer {
    if [[ $1 -eq $2 ]]
    then
      echo "Congrats! You guessed correctly!"
    elif [[ $1 -gt $2 ]]
    then
      echo "Your guess is too high."
    else
      echo "Your guess is too low."
    fi
}

number_of_files_in_wd=$(ls | wc -l)

#number_of_all_files_in_wd=$(ls -l | wc -l)
#echo $number_of_files_in_wd

echo "Type your guess on how many files are in the current directory and then press Enter:"
read response
echo "You entered: $response"

check_answer $response $number_of_files_in_wd

#if [[ $response -eq $number_of_files_in_wd ]]




