@echo off

set dirPath=%~dp0

::pull-music-task (13:30-13:59)
set pull_music_task_bat_path=%dirPath%~pull-music.bat
schtasks  /create /tn "pull-music-task" /sc WEEKLY /d MON,TUE,WED,THU,FRI /st 13:30 /et 13:59 /tr "%pull_music_task_bat_path%"

::play-music-task (14:00)
set play_music_task_bat_path=%dirPath%~play.bat
schtasks  /create /tn "play-music" /sc WEEKLY /d MON,TUE,WED,THU,FRI /st 14:00 /et 14:30 /tr "%play_music_task_bat_path%"

echo "finished"
pause