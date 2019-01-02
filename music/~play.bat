@echo off
set muisicName=Àî¾ÁÕÜ - ÏëÌ«¶à.mp3
::for  %%i in (*) do 
cd /d %~dp0
cd ..
git pull origin master --depth=1
cd /d %~dp0
echo "start play----%muisicName%"
call "%muisicName%"
pause