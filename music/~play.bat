@echo off
set muisicName=����� - ��̫��.mp3
::for  %%i in (*) do 
cd /d %~dp0
echo "start play----%muisicName%"
call "%muisicName%"
pause