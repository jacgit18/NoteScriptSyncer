@echo off

:: Install dependencies (Note: Windows commands may differ)
:: You might need to install equivalent software for libnotify and paplay
:: and update the paths accordingly.
:: Example: For notification, you could use "msg" command.
:: For audio, you can use "start" to play a sound file.

:: Notify that we are checking for changes (equivalent to notify-send)
msg * "Checking for changes"

:: Play a sound (equivalent to paplay)
start "" "C:\Path\to\sinister-laugh-140131.wav"

set "directory=%1"

:: Change to the selected directory (note: CD command remains the same)
cd /d "%directory%" || exit

:: Check for changes in the directory using git
:: Assuming you have Git installed on Windows
:: (You may need to adjust the paths and Git-related settings)
git status > temp.txt
set /p gstatus=<temp.txt
del temp.txt

:: Check if there are changes
if not "%gstatus%"=="" (
    set "commit_message=%1"
    git add --all
    git commit -m "%commit_message%"
    git pull
    git push
    msg * "Saved changes to GitHub"
)
