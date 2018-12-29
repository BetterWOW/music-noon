@echo off
for  %%i in (*.mp3) do set muisicName=%%i
echo "start play----%muisicName%"
call "%muisicName%"
pause