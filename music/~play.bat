@echo off
for  %%i in (*) do set muisicName=%%i
echo "start play----%muisicName%"
call "%muisicName%"
pause