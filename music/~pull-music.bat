@echo off
cd /d %~dp0
set dirPath=%~dp0

::pull 之前创建播放定时任务并关闭pull-music定时任务
::play-music-task (14:00-14:11)
set play_music_task_bat_path=%dirPath%~play.bat
schtasks  /create /tn "play-music" /sc WEEKLY /d MON,TUE,WED,THU,FRI /st 14:00 /et 14:11 /tr "%play_music_task_bat_path%" /F
schtasks /Delete /tn pull-music-task /F>nul

::开始pull
set rsa_path=.git/ignore/music-noon/ssh-key/id_rsa
git remote remove origin
git remote add origin git@github.com:BetterWOW/music-noon.git
git config core.sshCommand "ssh -i %rsa_path%"
git pull origin master --depth=1

echo "finished"
echo "shutdown console in 10s"
ping -n 11 127.0.0.1>nul