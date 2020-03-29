#!/usr/bin/env bash
# File: guessinggame.sh

return_code=1
number_of_files_in_wd=$(ls | wc -l)
#number_of_all_files_in_wd=$(ls -l | wc -l)
#echo $number_of_files_in_wd

function check_answer {
    if [[ $1 -eq $2 ]]
    then
      echo "Congrats! You guessed correctly!";
      return 0;
    elif [[ $1 -gt $2 ]]
    then
      echo -e "Your guess is too high.\n"
    else
      echo -e "Your guess is too low.\n"
    fi
    return 1;
}

while [ $return_code -eq 1 ]
do
    echo "Type your guess on how many files are in the current directory and then press Enter:";
    read response;
    echo "You entered: $response";
    check_answer $response $number_of_files_in_wd
    return_code=$?;
done
