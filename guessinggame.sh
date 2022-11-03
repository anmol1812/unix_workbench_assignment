#!/usr/bin/env bash
# File: guessinggame.sh

dirarray=($(ls */))
dircount=${#dirarray[@]}
dirguess=0

function checkguess {
    if [[ $1 -lt $2 ]]
    then
    echo "echo too low"
    elif [[ $1 -gt $2 ]]
    then
    echo "echo too high"
    fi
}

echo "guess the number of files in current directory"

while [ $dirguess -ne $dircount ]
do

read dirguess
$(checkguess $dirguess $dircount)
echo "-------------------------------------------"
echo "guess again"
done

echo "Congrats, your guess is right."
