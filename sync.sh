#!/bin/bash

# Install dependencies
sudo apt update
sudo apt install -y git libnotify-bin pulseaudio

notify-send -i "Script Notification" "Checking for changes" // libnotify optional dependencey that sends notification
# paplay /home/jac/Music/sinister-laugh-140131.wav

directory="$1"

# Change to the selected directory
cd "$directory" || exit

gstatus=$(git status --porcelain)
gstatusCommit=$(git status --porcelain | grep '^[ MARC??]')

# Check if the argument is provided
    git pull

if [[ ${#gstatus} -ne 0 ]]; then
    git add --all
    git commit -m "$gstatusCommit"


    git pull
    git push
    notify-send -i "Script Notification" "Saved changes to github" // libnotify optional dependencey that sends notification
fi








