#!/bin/bash

# move to other dir to run cron
# * * * * * /home/jac/script/sync.sh # stops at push

notify-send -i "Script Notification" "Checking for changes"
paplay /home/jac/Music/sinister-laugh-140131.wav

directory="/home/jac/DevMindMap/"

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
    notify-send -i "Script Notification" "Saved changes to github" 
fi





