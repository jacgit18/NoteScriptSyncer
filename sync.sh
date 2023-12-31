#!/bin/bash

# Install dependencies
sudo apt update
sudo apt install -y git libnotify-bin pulseaudio

notify-send -i "Script Notification" "Checking for changes" // libnotify optional dependencey that sends notification
paplay /home/jac/Music/sinister-laugh-140131.wav

directory="$1"

# Change to the selected directory
cd "$directory" || exit

gstatus=$(git status --porcelain)

# Check if the argument is provided


if [[ ${#gstatus} -ne 0 ]]; then
    commit_message="${1:-$gstatus}"
    git add --all
    git commit -m "$commit_message"

    git pull
    git push
    notify-send -i "Script Notification" "Saved changes to github" // libnotify optional dependencey that sends notification
fi





