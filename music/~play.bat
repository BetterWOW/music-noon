@echo off
set muisicName=����� - ��̫��.mp3
::for  %%i in (*) do
::cd�����ű����ڵ�·��
cd /d %~dp0
set dirPath=%~dp0

echo "start play----%muisicName%"
call "%muisicName%"

::���ź�رյ�ǰ���Ŷ�ʱ��������pull-music��ʱ����
schtasks /Delete /tn play-music /F>nul
::pull-music-task (13:30-13:59)
set pull_music_task_bat_path=%dirPath%~pull-music.bat
schtasks  /create /tn "pull-music-task" /sc WEEKLY /d MON,TUE,WED,THU,FRI /st 13:30 /et 13:50 /tr "%pull_music_task_bat_path%"


echo "finished"
echo "shutdown console in 10s"
ping -n 11 127.0.0.1>nul
::pause