#!/bin/bash

count_files() {
    local count=$(ls -1 | wc -l)
    echo $count
}

guessing_game() {
    local answer=$(count_files)
    local guess=-1

    while [ $guess -ne $answer ]; do
        read -p "How many files are in the current directory? " guess

        if [ $guess -lt $answer ]; then
            echo "Too low!"
        elif [ $guess -gt $answer ]; then
            echo "Too high!"
        else
            echo "Congratulations! You guessed correctly!"
        fi
    done
}

guessing_game
