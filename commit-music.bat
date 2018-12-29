@echo off
echo %~dp0
git add .
git commit -m "update music"
git push -u origin master
pause